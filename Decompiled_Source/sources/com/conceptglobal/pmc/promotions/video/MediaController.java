package com.conceptglobal.pmc.promotions.video;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaExtractor;
import android.util.Log;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class MediaController {
    private static volatile MediaController Instance = null;
    public static final String MIME_TYPE = "video/avc";
    private static final int PROCESSOR_TYPE_INTEL = 2;
    private static final int PROCESSOR_TYPE_MTK = 3;
    private static final int PROCESSOR_TYPE_OTHER = 0;
    private static final int PROCESSOR_TYPE_QCOM = 1;
    private static final int PROCESSOR_TYPE_SEC = 4;
    private static final int PROCESSOR_TYPE_TI = 5;
    private boolean videoConvertFirstWrite = true;

    public static native int convertVideoFrame(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i, int i2, int i3, int i4, int i5);

    private static boolean isRecognizedFormat(int i) {
        if (i == 39 || i == 2130706688) {
            return true;
        }
        switch (i) {
            case 19:
            case 20:
            case 21:
                return true;
            default:
                return false;
        }
    }

    public static MediaController getInstance() {
        MediaController mediaController = Instance;
        if (mediaController == null) {
            synchronized (MediaController.class) {
                mediaController = Instance;
                if (mediaController == null) {
                    mediaController = new MediaController();
                    Instance = mediaController;
                }
            }
        }
        return mediaController;
    }

    public static int selectColorFormat(MediaCodecInfo mediaCodecInfo, String str) {
        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
        int i = 0;
        for (int i2 = 0; i2 < capabilitiesForType.colorFormats.length; i2++) {
            int i3 = capabilitiesForType.colorFormats[i2];
            if (isRecognizedFormat(i3)) {
                if (!mediaCodecInfo.getName().equals("OMX.SEC.AVC.Encoder") || i3 != 19) {
                    return i3;
                }
                i = i3;
            }
        }
        return i;
    }

    private void didWriteData(boolean z, boolean z2) {
        if (this.videoConvertFirstWrite) {
            this.videoConvertFirstWrite = false;
        }
    }

    public static class VideoConvertRunnable implements Runnable {
        private String videoPath;

        private VideoConvertRunnable(String str) {
            this.videoPath = str;
        }

        public static void runConversion(final String str) {
            new Thread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.video.MediaController.VideoConvertRunnable.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread thread = new Thread(new VideoConvertRunnable(str), "VideoConvertRunnable");
                        thread.start();
                        thread.join();
                    } catch (Exception e) {
                        Log.e("tmessages", e.getMessage());
                    }
                }
            }).start();
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaController.getInstance().convertVideo(this.videoPath);
        }
    }

    public static MediaCodecInfo selectCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        MediaCodecInfo mediaCodecInfo = null;
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        if (!codecInfoAt.getName().equals("OMX.SEC.avc.enc") || codecInfoAt.getName().equals("OMX.SEC.AVC.Encoder")) {
                            return codecInfoAt;
                        }
                        mediaCodecInfo = codecInfoAt;
                    }
                }
            }
        }
        return mediaCodecInfo;
    }

    public void scheduleVideoConvert(String str) {
        startVideoConvertFromQueue(str);
    }

    private void startVideoConvertFromQueue(String str) {
        VideoConvertRunnable.runConversion(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007d, code lost:
    
        if (r10 == (-1)) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long readAndWriteTrack(android.media.MediaExtractor r20, com.conceptglobal.pmc.promotions.video.MP4Builder r21, android.media.MediaCodec.BufferInfo r22, long r23, long r25, java.io.File r27, boolean r28) throws java.lang.Exception {
        /*
            r19 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            r3 = r23
            r5 = r19
            r6 = r28
            int r7 = r5.selectTrack(r0, r6)
            r8 = -1
            if (r7 < 0) goto L8c
            r0.selectTrack(r7)
            android.media.MediaFormat r10 = r0.getTrackFormat(r7)
            int r11 = r1.addTrack(r10, r6)
            java.lang.String r12 = "max-input-size"
            int r10 = r10.getInteger(r12)
            r12 = 0
            r14 = 0
            int r15 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r15 <= 0) goto L30
            r0.seekTo(r3, r14)
            goto L33
        L30:
            r0.seekTo(r12, r14)
        L33:
            java.nio.ByteBuffer r3 = java.nio.ByteBuffer.allocateDirect(r10)
            r16 = r8
            r4 = 0
        L3a:
            if (r4 != 0) goto L88
            int r10 = r20.getSampleTrackIndex()
            r18 = 1
            if (r10 != r7) goto L7c
            int r10 = r0.readSampleData(r3, r14)
            r2.size = r10
            int r10 = r2.size
            if (r10 >= 0) goto L51
            r2.size = r14
            goto L7f
        L51:
            long r12 = r20.getSampleTime()
            r2.presentationTimeUs = r12
            if (r15 <= 0) goto L61
            int r10 = (r16 > r8 ? 1 : (r16 == r8 ? 0 : -1))
            if (r10 != 0) goto L61
            long r12 = r2.presentationTimeUs
            r16 = r12
        L61:
            r12 = 0
            int r10 = (r25 > r12 ? 1 : (r25 == r12 ? 0 : -1))
            if (r10 < 0) goto L6d
            long r12 = r2.presentationTimeUs
            int r10 = (r12 > r25 ? 1 : (r12 == r25 ? 0 : -1))
            if (r10 >= 0) goto L7f
        L6d:
            r2.offset = r14
            int r10 = r20.getSampleFlags()
            r2.flags = r10
            r1.writeSampleData(r11, r3, r2, r6)
            r20.advance()
            goto L81
        L7c:
            r12 = -1
            if (r10 != r12) goto L81
        L7f:
            r10 = 1
            goto L82
        L81:
            r10 = 0
        L82:
            if (r10 == 0) goto L85
            r4 = 1
        L85:
            r12 = 0
            goto L3a
        L88:
            r0.unselectTrack(r7)
            return r16
        L8c:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.video.MediaController.readAndWriteTrack(android.media.MediaExtractor, com.conceptglobal.pmc.promotions.video.MP4Builder, android.media.MediaCodec$BufferInfo, long, long, java.io.File, boolean):long");
    }

    private int selectTrack(MediaExtractor mediaExtractor, boolean z) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (z) {
                if (string.startsWith("audio/")) {
                    return i;
                }
            } else if (string.startsWith("video/")) {
                return i;
            }
        }
        return -5;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(7:12|13|14|15|16|17|18)|(1:(1:21)(11:365|366|367|368|(1:370)(1:371)|(3:28|29|30)(1:74)|31|(3:33|34|35)|39|40|41))(1:377)|22|23|(26:75|76|(2:348|349)|78|79|80|81|82|83|85|86|88|89|90|91|92|93|(4:95|(5:301|302|(4:304|(2:306|(2:308|309)(1:316))|317|309)(2:318|(2:320|(2:314|315)))|310|(3:312|314|315))|97|(1:(8:102|103|104|105|(1:107)(2:(1:192)(13:194|(5:277|278|279|(3:281|282|283)(1:290)|284)(2:196|(3:198|199|(11:201|202|(4:216|217|218|(3:220|221|(1:223))(2:224|(13:226|(3:230|(2:236|(5:238|239|240|241|242)(1:253))|254)|259|243|(1:246)|247|205|206|(1:208)(1:211)|209|210|(3:188|189|190)(8:110|111|112|113|(1:115)(5:120|(1:122)(2:124|(4:126|127|128|129)(2:159|(8:161|(1:163)(1:177)|164|(4:170|171|172|173)(1:166)|167|(1:169)|117|118)(3:178|179|180)))|123|117|118)|116|117|118)|119)))|204|205|206|(0)(0)|209|210|(0)(0)|119)(3:268|269|270))(3:274|275|276))|251|252|132|133|134|135|136|(1:138)|(1:140)|(1:142)|(1:144))|193)|108|(0)(0)|119)))|326|327|135|136|(0)|(0)|(0)|(0))(1:25)|26|(0)(0)|31|(0)|39|40|41) */
    /* JADX WARN: Can't wrap try/catch for region: R(24:75|76|(2:348|349)|78|79|80|81|82|83|85|86|88|89|90|(3:91|92|93)|(4:95|(5:301|302|(4:304|(2:306|(2:308|309)(1:316))|317|309)(2:318|(2:320|(2:314|315)))|310|(3:312|314|315))|97|(1:(8:102|103|104|105|(1:107)(2:(1:192)(13:194|(5:277|278|279|(3:281|282|283)(1:290)|284)(2:196|(3:198|199|(11:201|202|(4:216|217|218|(3:220|221|(1:223))(2:224|(13:226|(3:230|(2:236|(5:238|239|240|241|242)(1:253))|254)|259|243|(1:246)|247|205|206|(1:208)(1:211)|209|210|(3:188|189|190)(8:110|111|112|113|(1:115)(5:120|(1:122)(2:124|(4:126|127|128|129)(2:159|(8:161|(1:163)(1:177)|164|(4:170|171|172|173)(1:166)|167|(1:169)|117|118)(3:178|179|180)))|123|117|118)|116|117|118)|119)))|204|205|206|(0)(0)|209|210|(0)(0)|119)(3:268|269|270))(3:274|275|276))|251|252|132|133|134|135|136|(1:138)|(1:140)|(1:142)|(1:144))|193)|108|(0)(0)|119)))|326|327|135|136|(0)|(0)|(0)|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x023e, code lost:
    
        r35 = r13;
        r13 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x051e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x051c, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x05a3, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x05a4, code lost:
    
        r15 = r10;
        r1 = "time = ";
        r14 = true;
        r10 = r24;
        r6 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0597, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0598, code lost:
    
        r15 = r10;
        r1 = "time = ";
        r3 = r0;
        r10 = r24;
        r6 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x005c, code lost:
    
        if (r3 == 270) goto L4;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0371 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0503 A[Catch: all -> 0x051c, Exception -> 0x051e, TryCatch #45 {Exception -> 0x051e, all -> 0x051c, blocks: (B:136:0x04fe, B:138:0x0503, B:140:0x0508, B:142:0x050d, B:144:0x0515), top: B:135:0x04fe }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0508 A[Catch: all -> 0x051c, Exception -> 0x051e, TryCatch #45 {Exception -> 0x051e, all -> 0x051c, blocks: (B:136:0x04fe, B:138:0x0503, B:140:0x0508, B:142:0x050d, B:144:0x0515), top: B:135:0x04fe }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x050d A[Catch: all -> 0x051c, Exception -> 0x051e, TryCatch #45 {Exception -> 0x051e, all -> 0x051c, blocks: (B:136:0x04fe, B:138:0x0503, B:140:0x0508, B:142:0x050d, B:144:0x0515), top: B:135:0x04fe }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0515 A[Catch: all -> 0x051c, Exception -> 0x051e, TRY_LEAVE, TryCatch #45 {Exception -> 0x051e, all -> 0x051c, blocks: (B:136:0x04fe, B:138:0x0503, B:140:0x0508, B:142:0x050d, B:144:0x0515), top: B:135:0x04fe }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0362 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean convertVideo(java.lang.String r38, java.lang.String r39) {
        /*
            Method dump skipped, instructions count: 1610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.video.MediaController.convertVideo(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:12|13|14|15|17|18|19|(1:(1:22)(11:359|360|361|362|(1:364)(1:365)|(3:29|30|31)(1:75)|32|(3:34|35|36)|40|41|42))(1:371)|23|24|(26:76|77|(2:342|343)|79|80|81|82|84|85|86|87|88|89|90|91|92|93|(5:95|(5:294|295|(4:297|(2:299|(2:301|302)(1:309))|310|302)(2:311|(2:313|(4:307|308|98|(1:(8:103|104|105|106|(1:108)(1:(1:191)(4:192|(6:270|271|272|(3:274|275|276)(1:283)|277|207)(2:194|(3:196|197|(8:199|200|(4:209|210|211|(3:213|214|(1:216))(2:217|(10:219|(3:223|(2:229|(5:231|232|233|234|235)(1:246))|247)|252|236|(1:239)|240|203|(1:205)(1:208)|206|207)))|202|203|(0)(0)|206|207)(3:261|262|263))(3:267|268|269))|(3:187|188|189)(6:111|112|(1:114)(5:119|(1:121)(2:123|(4:125|126|127|128)(2:159|(6:161|(1:163)(1:176)|164|(4:169|170|171|172)|166|(1:168))(3:177|178|179)))|122|116|117)|115|116|117)|118))|109|(0)(0)|118)))))|303|(5:305|307|308|98|(9:(0)|103|104|105|106|(0)(0)|109|(0)(0)|118)))|97|98|(9:(0)|103|104|105|106|(0)(0)|109|(0)(0)|118))|319|320|135|136|(1:138)|(1:140)|(1:142)|(1:144))(1:26)|27|(0)(0)|32|(0)|40|41|42) */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0282, code lost:
    
        r0 = r9;
        r35 = r13;
        r13 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x05cb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x05cc, code lost:
    
        r15 = r10;
        r1 = "time = ";
        r14 = true;
        r10 = r24;
        r6 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x05bf, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x05c0, code lost:
    
        r15 = r10;
        r1 = "time = ";
        r3 = r0;
        r10 = r24;
        r6 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x00a1, code lost:
    
        if (r3 == 270) goto L4;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x027f A[ADDED_TO_REGION, EDGE_INSN: B:100:0x027f->B:101:0x0282 BREAK  A[LOOP:1: B:99:0x027d->B:118:0x027d]] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x052b A[Catch: all -> 0x0544, Exception -> 0x0546, TryCatch #36 {Exception -> 0x0546, all -> 0x0544, blocks: (B:136:0x0526, B:138:0x052b, B:140:0x0530, B:142:0x0535, B:144:0x053d), top: B:135:0x0526 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0530 A[Catch: all -> 0x0544, Exception -> 0x0546, TryCatch #36 {Exception -> 0x0546, all -> 0x0544, blocks: (B:136:0x0526, B:138:0x052b, B:140:0x0530, B:142:0x0535, B:144:0x053d), top: B:135:0x0526 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0535 A[Catch: all -> 0x0544, Exception -> 0x0546, TryCatch #36 {Exception -> 0x0546, all -> 0x0544, blocks: (B:136:0x0526, B:138:0x052b, B:140:0x0530, B:142:0x0535, B:144:0x053d), top: B:135:0x0526 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x053d A[Catch: all -> 0x0544, Exception -> 0x0546, TRY_LEAVE, TryCatch #36 {Exception -> 0x0546, all -> 0x0544, blocks: (B:136:0x0526, B:138:0x052b, B:140:0x0530, B:142:0x0535, B:144:0x053d), top: B:135:0x0526 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x060c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0642  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean convertVideo(java.lang.String r38) {
        /*
            Method dump skipped, instructions count: 1650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.video.MediaController.convertVideo(java.lang.String):boolean");
    }
}
