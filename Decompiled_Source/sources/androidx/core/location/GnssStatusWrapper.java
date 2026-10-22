package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.core.graphics.Insets$$ExternalSyntheticApiModelOutline0;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    GnssStatusWrapper(GnssStatus gnssStatus) {
        this.mWrapped = Insets$$ExternalSyntheticApiModelOutline0.m91m(Preconditions.checkNotNull(gnssStatus));
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        int satelliteCount;
        satelliteCount = this.mWrapped.getSatelliteCount();
        return satelliteCount;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int satelliteIndex) {
        int constellationType;
        constellationType = this.mWrapped.getConstellationType(satelliteIndex);
        return constellationType;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int satelliteIndex) {
        int svid;
        svid = this.mWrapped.getSvid(satelliteIndex);
        return svid;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int satelliteIndex) {
        float cn0DbHz;
        cn0DbHz = this.mWrapped.getCn0DbHz(satelliteIndex);
        return cn0DbHz;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int satelliteIndex) {
        float elevationDegrees;
        elevationDegrees = this.mWrapped.getElevationDegrees(satelliteIndex);
        return elevationDegrees;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int satelliteIndex) {
        float azimuthDegrees;
        azimuthDegrees = this.mWrapped.getAzimuthDegrees(satelliteIndex);
        return azimuthDegrees;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int satelliteIndex) {
        boolean hasEphemerisData;
        hasEphemerisData = this.mWrapped.hasEphemerisData(satelliteIndex);
        return hasEphemerisData;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int satelliteIndex) {
        boolean hasAlmanacData;
        hasAlmanacData = this.mWrapped.hasAlmanacData(satelliteIndex);
        return hasAlmanacData;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int satelliteIndex) {
        boolean usedInFix;
        usedInFix = this.mWrapped.usedInFix(satelliteIndex);
        return usedInFix;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int satelliteIndex) {
        boolean hasCarrierFrequencyHz;
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        hasCarrierFrequencyHz = this.mWrapped.hasCarrierFrequencyHz(satelliteIndex);
        return hasCarrierFrequencyHz;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int satelliteIndex) {
        float carrierFrequencyHz;
        if (Build.VERSION.SDK_INT >= 26) {
            carrierFrequencyHz = this.mWrapped.getCarrierFrequencyHz(satelliteIndex);
            return carrierFrequencyHz;
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int satelliteIndex) {
        boolean hasBasebandCn0DbHz;
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        hasBasebandCn0DbHz = this.mWrapped.hasBasebandCn0DbHz(satelliteIndex);
        return hasBasebandCn0DbHz;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int satelliteIndex) {
        float basebandCn0DbHz;
        if (Build.VERSION.SDK_INT >= 30) {
            basebandCn0DbHz = this.mWrapped.getBasebandCn0DbHz(satelliteIndex);
            return basebandCn0DbHz;
        }
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object o) {
        boolean equals;
        if (this == o) {
            return true;
        }
        if (!(o instanceof GnssStatusWrapper)) {
            return false;
        }
        equals = this.mWrapped.equals(((GnssStatusWrapper) o).mWrapped);
        return equals;
    }

    public int hashCode() {
        int hashCode;
        hashCode = this.mWrapped.hashCode();
        return hashCode;
    }
}
