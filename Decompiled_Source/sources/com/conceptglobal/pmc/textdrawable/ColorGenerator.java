package com.conceptglobal.pmc.textdrawable;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public class ColorGenerator {
    public static ColorGenerator GENERAL;
    private final List<Integer> mColors;
    private final Random mRandom = new Random(System.currentTimeMillis());
    public static ColorGenerator DEFAULT = create(Arrays.asList(-957596, -686759, -416706, -1784274, -9977996, -10902850, -14642227, -5414233, -8366207));
    public static ColorGenerator MATERIAL = create(Arrays.asList(-1739917, -1023342, -4560696, -6982195, -8812853, -10177034, -11549705, -11677471, -11684180, -8271996, -5319295, -30107, -2825897, -10929, -18611, -6190977, -7297874));
    public static ColorGenerator TRANSPARENT = create(Arrays.asList(-638491804, -638220967, -637950914, -652176435, -647512204, -648437058, -642948441, -645900415, -639318482));

    public static ColorGenerator create(List<Integer> list) {
        return new ColorGenerator(list);
    }

    private ColorGenerator(List<Integer> list) {
        this.mColors = list;
    }

    public int getRandomColor() {
        List<Integer> list = this.mColors;
        return list.get(this.mRandom.nextInt(list.size())).intValue();
    }

    public int getColor(Object obj) {
        return this.mColors.get(Math.abs(obj.hashCode()) % this.mColors.size()).intValue();
    }

    public static String getRandomColors() {
        return new String[]{"fff16364", "fff58559", "fff9a43e", "ffe4c62e", "ff67bf74", "ff59a2be", "ff2093cd", "ffad62a7", "ff805781"}[new Random().nextInt(9)];
    }
}
