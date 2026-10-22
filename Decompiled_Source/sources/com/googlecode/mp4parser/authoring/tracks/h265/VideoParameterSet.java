package com.googlecode.mp4parser.authoring.tracks.h265;

import com.googlecode.mp4parser.h264.read.CAVLCReader;
import com.googlecode.mp4parser.util.ByteBufferByteChannel;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;

/* loaded from: classes2.dex */
public class VideoParameterSet {
    ByteBuffer vps;
    int vps_parameter_set_id;

    public VideoParameterSet(ByteBuffer byteBuffer) throws IOException {
        this.vps = byteBuffer;
        CAVLCReader cAVLCReader = new CAVLCReader(Channels.newInputStream(new ByteBufferByteChannel((ByteBuffer) byteBuffer.position(0))));
        this.vps_parameter_set_id = cAVLCReader.readU(4, "vps_parameter_set_id");
        cAVLCReader.readU(2, "vps_reserved_three_2bits");
        cAVLCReader.readU(6, "vps_max_layers_minus1");
        int readU = cAVLCReader.readU(3, "vps_max_sub_layers_minus1");
        cAVLCReader.readBool("vps_temporal_id_nesting_flag");
        cAVLCReader.readU(16, "vps_reserved_0xffff_16bits");
        profile_tier_level(readU, cAVLCReader);
        boolean readBool = cAVLCReader.readBool("vps_sub_layer_ordering_info_present_flag");
        int[] iArr = new int[readBool ? 1 : readU + 1];
        int[] iArr2 = new int[readBool ? 1 : readU + 1];
        int[] iArr3 = new int[readBool ? 1 : readU + 1];
        for (int i = readBool ? 0 : readU; i <= readU; i++) {
            iArr[i] = cAVLCReader.readUE("vps_max_dec_pic_buffering_minus1[" + i + "]");
            iArr2[i] = cAVLCReader.readUE("vps_max_dec_pic_buffering_minus1[" + i + "]");
            iArr3[i] = cAVLCReader.readUE("vps_max_dec_pic_buffering_minus1[" + i + "]");
        }
        int readU2 = cAVLCReader.readU(6, "vps_max_layer_id");
        int readUE = cAVLCReader.readUE("vps_num_layer_sets_minus1");
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, readUE, readU2);
        for (int i2 = 1; i2 <= readUE; i2++) {
            for (int i3 = 0; i3 <= readU2; i3++) {
                zArr[i2][i3] = cAVLCReader.readBool("layer_id_included_flag[" + i2 + "][" + i3 + "]");
            }
        }
        if (cAVLCReader.readBool("vps_timing_info_present_flag")) {
            cAVLCReader.readU(32, "vps_num_units_in_tick");
            cAVLCReader.readU(32, "vps_time_scale");
            if (cAVLCReader.readBool("vps_poc_proportional_to_timing_flag")) {
                cAVLCReader.readUE("vps_num_ticks_poc_diff_one_minus1");
            }
            int readUE2 = cAVLCReader.readUE("vps_num_hrd_parameters");
            int[] iArr4 = new int[readUE2];
            boolean[] zArr2 = new boolean[readUE2];
            for (int i4 = 0; i4 < readUE2; i4++) {
                iArr4[i4] = cAVLCReader.readUE("hrd_layer_set_idx[" + i4 + "]");
                if (i4 > 0) {
                    zArr2[i4] = cAVLCReader.readBool("cprms_present_flag[" + i4 + "]");
                } else {
                    zArr2[0] = true;
                }
                hrd_parameters(zArr2[i4], readU, cAVLCReader);
            }
        }
        if (cAVLCReader.readBool("vps_extension_flag")) {
            while (cAVLCReader.moreRBSPData()) {
                cAVLCReader.readBool("vps_extension_data_flag");
            }
        }
        cAVLCReader.readTrailingBits();
    }

    public void profile_tier_level(int i, CAVLCReader cAVLCReader) throws IOException {
        int i2 = i;
        int i3 = 2;
        cAVLCReader.readU(2, "general_profile_space ");
        cAVLCReader.readBool("general_tier_flag");
        cAVLCReader.readU(5, "general_profile_idc");
        int i4 = 32;
        boolean[] zArr = new boolean[32];
        char c = 0;
        int i5 = 0;
        while (i5 < i4) {
            zArr[i5] = cAVLCReader.readBool("general_profile_compatibility_flag[" + i5 + "]");
            i5++;
            i2 = i;
            i4 = 32;
            i3 = 2;
            c = 0;
        }
        cAVLCReader.readBool("general_progressive_source_flag");
        cAVLCReader.readBool("general_interlaced_source_flag");
        cAVLCReader.readBool("general_non_packed_constraint_flag");
        cAVLCReader.readBool("general_frame_only_constraint_flag");
        cAVLCReader.readU(44, "general_reserved_zero_44bits");
        int i6 = 8;
        cAVLCReader.readU(8, "general_level_idc");
        boolean[] zArr2 = new boolean[i2];
        boolean[] zArr3 = new boolean[i2];
        int i7 = 0;
        while (i7 < i2) {
            zArr2[i7] = cAVLCReader.readBool("sub_layer_profile_present_flag[" + i7 + "]");
            zArr3[i7] = cAVLCReader.readBool("sub_layer_level_present_flag[" + i7 + "]");
            i7++;
            i2 = i;
            i4 = 32;
            i3 = 2;
            c = 0;
            i6 = 8;
        }
        if (i2 > 0) {
            for (int i8 = i2; i8 < i6; i8++) {
                cAVLCReader.readU(i3, "reserved_zero_2bits");
            }
        }
        int[] iArr = new int[i2];
        boolean[] zArr4 = new boolean[i2];
        int[] iArr2 = new int[i2];
        int[] iArr3 = new int[i3];
        iArr3[1] = i4;
        iArr3[c] = i2;
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iArr3);
        boolean[] zArr6 = new boolean[i2];
        boolean[] zArr7 = new boolean[i2];
        boolean[] zArr8 = new boolean[i2];
        boolean[] zArr9 = new boolean[i2];
        int[] iArr4 = new int[i2];
        int i9 = 0;
        while (i9 < i2) {
            if (zArr2[i9]) {
                iArr[i9] = cAVLCReader.readU(2, "sub_layer_profile_space[" + i9 + "]");
                zArr4[i9] = cAVLCReader.readBool("sub_layer_tier_flag[" + i9 + "]");
                iArr2[i9] = cAVLCReader.readU(5, "sub_layer_profile_idc[" + i9 + "]");
                int i10 = 0;
                while (i10 < 32) {
                    zArr5[i9][i10] = cAVLCReader.readBool("sub_layer_profile_compatibility_flag[" + i9 + "][" + i10 + "]");
                    i10++;
                    zArr6 = zArr6;
                }
                zArr6[i9] = cAVLCReader.readBool("sub_layer_progressive_source_flag[" + i9 + "]");
                zArr7[i9] = cAVLCReader.readBool("sub_layer_interlaced_source_flag[" + i9 + "]");
                zArr8[i9] = cAVLCReader.readBool("sub_layer_non_packed_constraint_flag[" + i9 + "]");
                zArr9[i9] = cAVLCReader.readBool("sub_layer_frame_only_constraint_flag[" + i9 + "]");
                cAVLCReader.readNBit(44, "reserved");
            }
            boolean[] zArr10 = zArr6;
            if (zArr3[i9]) {
                iArr4[i9] = cAVLCReader.readU(8, "sub_layer_level_idc");
            }
            i9++;
            i2 = i;
            zArr6 = zArr10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hrd_parameters(boolean r12, int r13, com.googlecode.mp4parser.h264.read.CAVLCReader r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.authoring.tracks.h265.VideoParameterSet.hrd_parameters(boolean, int, com.googlecode.mp4parser.h264.read.CAVLCReader):void");
    }

    void sub_layer_hrd_parameters(int i, int i2, boolean z, CAVLCReader cAVLCReader) throws IOException {
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int[] iArr3 = new int[i2];
        int[] iArr4 = new int[i2];
        boolean[] zArr = new boolean[i2];
        for (int i3 = 0; i3 <= i2; i3++) {
            iArr[i3] = cAVLCReader.readUE("bit_rate_value_minus1[" + i3 + "]");
            iArr2[i3] = cAVLCReader.readUE("cpb_size_value_minus1[" + i3 + "]");
            if (z) {
                iArr3[i3] = cAVLCReader.readUE("cpb_size_du_value_minus1[" + i3 + "]");
                iArr4[i3] = cAVLCReader.readUE("bit_rate_du_value_minus1[" + i3 + "]");
            }
            zArr[i3] = cAVLCReader.readBool("cbr_flag[" + i3 + "]");
        }
    }

    public ByteBuffer toByteBuffer() {
        return this.vps;
    }
}
