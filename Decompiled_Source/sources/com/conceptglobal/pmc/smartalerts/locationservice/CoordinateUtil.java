package com.conceptglobal.pmc.smartalerts.locationservice;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public class CoordinateUtil {
    public static String roundCoordinate(double d) {
        return new BigDecimal(String.valueOf(d)).setScale(6, 4).toPlainString();
    }
}
