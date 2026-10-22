package com.googlecode.mp4parser.srt;

import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.googlecode.mp4parser.authoring.tracks.TextTrackImpl;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public class SrtParser {
    public static TextTrackImpl parse(InputStream inputStream) throws IOException {
        LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(inputStream, "UTF-8"));
        TextTrackImpl textTrackImpl = new TextTrackImpl();
        while (lineNumberReader.readLine() != null) {
            String readLine = lineNumberReader.readLine();
            String str = "";
            while (true) {
                String readLine2 = lineNumberReader.readLine();
                if (readLine2 != null && !readLine2.trim().equals("")) {
                    str = String.valueOf(str) + readLine2 + IOUtils.LINE_SEPARATOR_UNIX;
                }
            }
            textTrackImpl.getSubs().add(new TextTrackImpl.Line(parse(readLine.split("-->")[0]), parse(readLine.split("-->")[1]), str));
        }
        return textTrackImpl;
    }

    private static long parse(String str) {
        long parseLong = Long.parseLong(str.split(":")[0].trim());
        long parseLong2 = Long.parseLong(str.split(":")[1].trim());
        long parseLong3 = Long.parseLong(str.split(":")[2].split(",")[0].trim());
        return (parseLong * 3600000) + (parseLong2 * ConstantDeclarations.REPEAT_TIME) + (parseLong3 * 1000) + Long.parseLong(str.split(":")[2].split(",")[1].trim());
    }
}
