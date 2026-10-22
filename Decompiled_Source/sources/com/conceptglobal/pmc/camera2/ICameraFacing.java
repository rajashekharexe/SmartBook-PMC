package com.conceptglobal.pmc.camera2;

/* loaded from: classes.dex */
public interface ICameraFacing {
    String getBackCameraId();

    String getFrontCameraId();

    boolean isCameraBackFacing();

    boolean isCameraFrontFacing();

    void setBackFacingCamera(String str);

    void setCameraBackFacing();

    void setCameraFrontFacing();

    void setFrontFacingCamera(String str);
}
