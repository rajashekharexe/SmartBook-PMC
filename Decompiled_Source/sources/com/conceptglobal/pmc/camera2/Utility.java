package com.conceptglobal.pmc.camera2;

import android.util.Size;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class Utility {
    static Size getApproriateVideoSize(List<Size> list, int i, int i2) {
        try {
            Size size = new Size(i, i2);
            if (list.contains(size) || list.size() <= 0) {
                return size;
            }
            Size size2 = list.get(0);
            size2.getWidth();
            size2.getHeight();
            return size2;
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    static class CompareSizesByArea implements Comparator<Size> {
        CompareSizesByArea() {
        }

        public static CompareSizesByArea newInstance() {
            return new CompareSizesByArea();
        }

        @Override // java.util.Comparator
        public int compare(Size size, Size size2) {
            try {
                return Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
            } catch (Exception e) {
                e.getMessage();
                return -1;
            }
        }
    }

    static Size chooseOptimalSize(Size[] sizeArr, int i, int i2, int i3, int i4, Size size) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            int width = size.getWidth();
            int height = size.getHeight();
            for (Size size2 : sizeArr) {
                if (size2.getWidth() <= i3 && size2.getHeight() <= i4 && size2.getHeight() == (size2.getWidth() * height) / width) {
                    if (size2.getWidth() >= i && size2.getHeight() >= i2) {
                        arrayList.add(size2);
                    } else {
                        arrayList2.add(size2);
                    }
                }
            }
            if (arrayList.size() > 0) {
                return (Size) Collections.min(arrayList, new CompareSizesByArea());
            }
            if (arrayList2.size() > 0) {
                return (Size) Collections.max(arrayList2, new CompareSizesByArea());
            }
            return sizeArr[0];
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }
}
