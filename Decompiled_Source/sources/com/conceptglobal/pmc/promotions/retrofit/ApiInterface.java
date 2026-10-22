package com.conceptglobal.pmc.promotions.retrofit;

import com.conceptglobal.pmc.promotions.models.SendPromotionModel;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;

/* loaded from: classes.dex */
public interface ApiInterface {
    @Headers({"Accept: application/json"})
    @POST("GetMasterSyncData")
    Call<String> getPromotionsData(@Header("token") String str, @Body SendPromotionModel sendPromotionModel);

    @FormUrlEncoded
    @Headers({"Accept: application/json"})
    @POST("UpdateStatusAfterMasterSync")
    Call<String> sendMasterSyncDataAck(@Header("X-AUTH-TOKEN") String str, @Body String str2);
}
