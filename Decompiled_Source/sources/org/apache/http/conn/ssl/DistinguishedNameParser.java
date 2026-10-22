package org.apache.http.conn.ssl;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
final class DistinguishedNameParser {
    private final TokenParser tokenParser = new InternalTokenParser();
    public static final DistinguishedNameParser INSTANCE = new DistinguishedNameParser();
    private static final BitSet EQUAL_OR_COMMA_OR_PLUS = TokenParser.INIT_BITSET(61, 44, 43);
    private static final BitSet COMMA_OR_PLUS = TokenParser.INIT_BITSET(44, 43);

    DistinguishedNameParser() {
    }

    String parseToken(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        return this.tokenParser.parseToken(charArrayBuffer, parserCursor, bitSet);
    }

    String parseValue(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        return this.tokenParser.parseValue(charArrayBuffer, parserCursor, bitSet);
    }

    NameValuePair parseParameter(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        String parseToken = parseToken(charArrayBuffer, parserCursor, EQUAL_OR_COMMA_OR_PLUS);
        if (parserCursor.atEnd()) {
            return new BasicNameValuePair(parseToken, null);
        }
        char charAt = charArrayBuffer.charAt(parserCursor.getPos());
        parserCursor.updatePos(parserCursor.getPos() + 1);
        if (charAt == ',') {
            return new BasicNameValuePair(parseToken, null);
        }
        String parseValue = parseValue(charArrayBuffer, parserCursor, COMMA_OR_PLUS);
        if (!parserCursor.atEnd()) {
            parserCursor.updatePos(parserCursor.getPos() + 1);
        }
        return new BasicNameValuePair(parseToken, parseValue);
    }

    public List<NameValuePair> parse(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        ArrayList arrayList = new ArrayList();
        this.tokenParser.skipWhiteSpace(charArrayBuffer, parserCursor);
        while (!parserCursor.atEnd()) {
            arrayList.add(parseParameter(charArrayBuffer, parserCursor));
        }
        return arrayList;
    }

    public List<NameValuePair> parse(String str) {
        if (str == null) {
            return null;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return parse(charArrayBuffer, new ParserCursor(0, str.length()));
    }

    static class InternalTokenParser extends TokenParser {
        InternalTokenParser() {
        }

        @Override // org.apache.http.conn.ssl.TokenParser
        public void copyUnquotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
            int pos = parserCursor.getPos();
            int pos2 = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            boolean z = false;
            while (pos2 < upperBound) {
                char charAt = charArrayBuffer.charAt(pos2);
                if (z) {
                    sb.append(charAt);
                    z = false;
                } else if ((bitSet != null && bitSet.get(charAt)) || TokenParser.isWhitespace(charAt) || charAt == '\"') {
                    break;
                } else if (charAt == '\\') {
                    z = true;
                } else {
                    sb.append(charAt);
                }
                pos2++;
                pos++;
            }
            parserCursor.updatePos(pos);
        }
    }
}
