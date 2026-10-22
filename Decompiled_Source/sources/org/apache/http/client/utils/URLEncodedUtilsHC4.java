package org.apache.http.client.utils;

import java.io.IOException;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import kotlin.UByte;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.entity.ContentType;
import org.apache.http.message.BasicHeaderValueParserHC4;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EntityUtilsHC4;

/* loaded from: classes2.dex */
public class URLEncodedUtilsHC4 {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final BitSet PATHSAFE;
    private static final BitSet PUNCT;
    private static final char[] QP_SEPS;
    private static final char QP_SEP_A = '&';
    private static final String QP_SEP_PATTERN;
    private static final char QP_SEP_S = ';';
    private static final int RADIX = 16;
    private static final BitSet RESERVED;
    private static final BitSet UNRESERVED;
    private static final BitSet URIC;
    private static final BitSet URLENCODER;
    private static final BitSet USERINFO;

    public static List<NameValuePair> parse(URI uri, String str) {
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            ArrayList arrayList = new ArrayList();
            parse(arrayList, new Scanner(rawQuery), QP_SEP_PATTERN, str);
            return arrayList;
        }
        return Collections.emptyList();
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        String entityUtilsHC4;
        ContentType contentType = ContentType.get(httpEntity);
        if (contentType != null && contentType.getMimeType().equalsIgnoreCase("application/x-www-form-urlencoded") && (entityUtilsHC4 = EntityUtilsHC4.toString(httpEntity, Consts.ASCII)) != null && entityUtilsHC4.length() > 0) {
            Charset charset = contentType.getCharset();
            if (charset == null) {
                charset = Charset.forName("ISO-8859-1");
            }
            return parse(entityUtilsHC4, charset, QP_SEPS);
        }
        return Collections.emptyList();
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                return elements[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
            }
        }
        return false;
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        parse(list, scanner, QP_SEP_PATTERN, str);
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str, String str2) {
        String decodeFormFields;
        String str3;
        scanner.useDelimiter(str);
        while (scanner.hasNext()) {
            String next = scanner.next();
            int indexOf = next.indexOf(NAME_VALUE_SEPARATOR);
            if (indexOf != -1) {
                decodeFormFields = decodeFormFields(next.substring(0, indexOf).trim(), str2);
                str3 = decodeFormFields(next.substring(indexOf + 1).trim(), str2);
            } else {
                decodeFormFields = decodeFormFields(next.trim(), str2);
                str3 = null;
            }
            list.add(new BasicNameValuePair(decodeFormFields, str3));
        }
    }

    static {
        char[] cArr = {'&', QP_SEP_S};
        QP_SEPS = cArr;
        QP_SEP_PATTERN = "[" + new String(cArr) + "]";
        UNRESERVED = new BitSet(256);
        PUNCT = new BitSet(256);
        USERINFO = new BitSet(256);
        PATHSAFE = new BitSet(256);
        URIC = new BitSet(256);
        RESERVED = new BitSet(256);
        URLENCODER = new BitSet(256);
        for (int i = 97; i <= 122; i++) {
            UNRESERVED.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            UNRESERVED.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            UNRESERVED.set(i3);
        }
        BitSet bitSet = UNRESERVED;
        bitSet.set(95);
        bitSet.set(45);
        bitSet.set(46);
        bitSet.set(42);
        URLENCODER.or(bitSet);
        bitSet.set(33);
        bitSet.set(WebSocketProtocol.PAYLOAD_SHORT);
        bitSet.set(39);
        bitSet.set(40);
        bitSet.set(41);
        BitSet bitSet2 = PUNCT;
        bitSet2.set(44);
        bitSet2.set(59);
        bitSet2.set(58);
        bitSet2.set(36);
        bitSet2.set(38);
        bitSet2.set(43);
        bitSet2.set(61);
        BitSet bitSet3 = USERINFO;
        bitSet3.or(bitSet);
        bitSet3.or(bitSet2);
        BitSet bitSet4 = PATHSAFE;
        bitSet4.or(bitSet);
        bitSet4.set(47);
        bitSet4.set(59);
        bitSet4.set(58);
        bitSet4.set(64);
        bitSet4.set(38);
        bitSet4.set(61);
        bitSet4.set(43);
        bitSet4.set(36);
        bitSet4.set(44);
        BitSet bitSet5 = RESERVED;
        bitSet5.set(59);
        bitSet5.set(47);
        bitSet5.set(63);
        bitSet5.set(58);
        bitSet5.set(64);
        bitSet5.set(38);
        bitSet5.set(61);
        bitSet5.set(43);
        bitSet5.set(36);
        bitSet5.set(44);
        bitSet5.set(91);
        bitSet5.set(93);
        BitSet bitSet6 = URIC;
        bitSet6.or(bitSet5);
        bitSet6.or(bitSet);
    }

    public static List<NameValuePair> parse(String str, Charset charset) {
        return parse(str, charset, QP_SEPS);
    }

    public static List<NameValuePair> parse(String str, Charset charset, char... cArr) {
        if (str == null) {
            return Collections.emptyList();
        }
        BasicHeaderValueParserHC4 basicHeaderValueParserHC4 = BasicHeaderValueParserHC4.INSTANCE;
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, charArrayBuffer.length());
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            NameValuePair parseNameValuePair = basicHeaderValueParserHC4.parseNameValuePair(charArrayBuffer, parserCursor, cArr);
            if (parseNameValuePair.getName().length() > 0) {
                arrayList.add(new BasicNameValuePair(decodeFormFields(parseNameValuePair.getName(), charset), decodeFormFields(parseNameValuePair.getValue(), charset)));
            }
        }
        return arrayList;
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        return format(list, '&', str);
    }

    public static String format(List<? extends NameValuePair> list, char c, String str) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String encodeFormFields = encodeFormFields(nameValuePair.getName(), str);
            String encodeFormFields2 = encodeFormFields(nameValuePair.getValue(), str);
            if (sb.length() > 0) {
                sb.append(c);
            }
            sb.append(encodeFormFields);
            if (encodeFormFields2 != null) {
                sb.append(NAME_VALUE_SEPARATOR);
                sb.append(encodeFormFields2);
            }
        }
        return sb.toString();
    }

    public static String format(Iterable<? extends NameValuePair> iterable, Charset charset) {
        return format(iterable, '&', charset);
    }

    public static String format(Iterable<? extends NameValuePair> iterable, char c, Charset charset) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : iterable) {
            String encodeFormFields = encodeFormFields(nameValuePair.getName(), charset);
            String encodeFormFields2 = encodeFormFields(nameValuePair.getValue(), charset);
            if (sb.length() > 0) {
                sb.append(c);
            }
            sb.append(encodeFormFields);
            if (encodeFormFields2 != null) {
                sb.append(NAME_VALUE_SEPARATOR);
                sb.append(encodeFormFields2);
            }
        }
        return sb.toString();
    }

    private static String urlEncode(String str, Charset charset, BitSet bitSet, boolean z) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        ByteBuffer encode = charset.encode(str);
        while (encode.hasRemaining()) {
            byte b = encode.get();
            int i = b & UByte.MAX_VALUE;
            if (bitSet.get(i)) {
                sb.append((char) i);
            } else if (z && i == 32) {
                sb.append('+');
            } else {
                sb.append("%");
                char upperCase = Character.toUpperCase(Character.forDigit((i >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(b & 15, 16));
                sb.append(upperCase);
                sb.append(upperCase2);
            }
        }
        return sb.toString();
    }

    private static String urlDecode(String str, Charset charset, boolean z) {
        if (str == null) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(str.length());
        CharBuffer wrap = CharBuffer.wrap(str);
        while (wrap.hasRemaining()) {
            char c = wrap.get();
            if (c == '%' && wrap.remaining() >= 2) {
                char c2 = wrap.get();
                char c3 = wrap.get();
                int digit = Character.digit(c2, 16);
                int digit2 = Character.digit(c3, 16);
                if (digit != -1 && digit2 != -1) {
                    allocate.put((byte) ((digit << 4) + digit2));
                } else {
                    allocate.put((byte) 37);
                    allocate.put((byte) c2);
                    allocate.put((byte) c3);
                }
            } else if (z && c == '+') {
                allocate.put((byte) 32);
            } else {
                allocate.put((byte) c);
            }
        }
        allocate.flip();
        return charset.decode(allocate).toString();
    }

    private static String decodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        return urlDecode(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, true);
    }

    private static String decodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return urlDecode(str, charset, true);
    }

    private static String encodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        return urlEncode(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, URLENCODER, true);
    }

    private static String encodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return urlEncode(str, charset, URLENCODER, true);
    }

    static String encUserInfo(String str, Charset charset) {
        return urlEncode(str, charset, USERINFO, false);
    }

    static String encUric(String str, Charset charset) {
        return urlEncode(str, charset, URIC, false);
    }

    static String encPath(String str, Charset charset) {
        return urlEncode(str, charset, PATHSAFE, false);
    }
}
