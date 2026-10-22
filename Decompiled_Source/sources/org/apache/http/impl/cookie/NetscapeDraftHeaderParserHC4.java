package org.apache.http.impl.cookie;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public class NetscapeDraftHeaderParserHC4 {
    public static final NetscapeDraftHeaderParserHC4 DEFAULT = new NetscapeDraftHeaderParserHC4();

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair parseNameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
        }
        return new BasicHeaderElement(parseNameValuePair.getName(), parseNameValuePair.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
    }

    private NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        boolean z;
        boolean z2;
        String substringTrimmed;
        char charAt;
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            z = true;
            if (pos >= upperBound || (charAt = charArrayBuffer.charAt(pos)) == '=') {
                break;
            }
            if (charAt == ';') {
                z2 = true;
                break;
            }
            pos++;
        }
        z2 = false;
        if (pos == upperBound) {
            substringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            z2 = true;
        } else {
            substringTrimmed = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
        }
        if (z2) {
            parserCursor.updatePos(pos);
            return new BasicNameValuePair(substringTrimmed, null);
        }
        int i = pos;
        while (true) {
            if (i >= upperBound) {
                z = z2;
                break;
            }
            if (charArrayBuffer.charAt(i) == ';') {
                break;
            }
            i++;
        }
        while (pos < i && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i2 = i;
        while (i2 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i2 - 1))) {
            i2--;
        }
        String substring = charArrayBuffer.substring(pos, i2);
        if (z) {
            i++;
        }
        parserCursor.updatePos(i);
        return new BasicNameValuePair(substringTrimmed, substring);
    }
}
