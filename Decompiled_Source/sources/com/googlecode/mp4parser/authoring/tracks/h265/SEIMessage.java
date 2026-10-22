package com.googlecode.mp4parser.authoring.tracks.h265;

import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import java.io.IOException;

/* loaded from: classes2.dex */
public class SEIMessage {
    public SEIMessage(BitReaderBuffer bitReaderBuffer) throws IOException {
        int i = 0;
        while (bitReaderBuffer.readBits(8) == 255) {
            i += 255;
        }
        int readBits = bitReaderBuffer.readBits(8) + i;
        while (bitReaderBuffer.readBits(8) == 255) {
        }
        bitReaderBuffer.readBits(8);
        System.err.println("payloadType " + readBits);
    }
}
