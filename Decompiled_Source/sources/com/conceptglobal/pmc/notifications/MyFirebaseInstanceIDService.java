package com.conceptglobal.pmc.notifications;

import android.util.Log;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.model.NotificationKeyModel;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.gson.Gson;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MyFirebaseInstanceIDService extends FirebaseMessagingService {
    private static final String TAG = "MyFirebaseIDService";

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: com.conceptglobal.pmc.notifications.MyFirebaseInstanceIDService$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                MyFirebaseInstanceIDService.this.m199xd6b10855(task);
            }
        });
    }

    /* renamed from: lambda$onNewToken$0$com-conceptglobal-pmc-notifications-MyFirebaseInstanceIDService, reason: not valid java name */
    /* synthetic */ void m199xd6b10855(Task task) {
        Log.d(TAG, "Refreshed token: " + ((String) task.getResult()));
        sendNotificationIdtoServer((String) task.getResult());
    }

    private void sendNotificationIdtoServer(String str) {
        ResponseModel responseModel;
        String str2;
        Log.e("Notification Method", "---Called for PDAID");
        if (UtilDeclarations.isDBAvailable()) {
            Log.e("Notification Method", "---DBAvailable");
            String deviceID = ConstantsPMC.getInstance().getDeviceID();
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            if (deviceID != null) {
                String str3 = "";
                if (deviceID.equals("") || str == null || str.equals("")) {
                    return;
                }
                NotificationKeyModel notificationKeyModel = new NotificationKeyModel();
                notificationKeyModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
                notificationKeyModel.setFCMKey(str);
                try {
                    String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(new Gson().toJson(notificationKeyModel), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetNotificationKey(), wcfToken);
                    try {
                        responseModel = (ResponseModel) new Gson().fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                        str2 = (String) responseModel.getData();
                    } catch (Exception e) {
                        e = e;
                        str3 = sendRequestwithToken;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    if (responseModel.getStatus().equals("AUTHORISED")) {
                        if (str2 != null && !str2.isEmpty()) {
                            Log.d(TAG, str2 + "");
                        }
                    } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                        new GetToken(getApplicationContext(), 2).StartGetToken();
                        Class<?> cls = Class.forName("com.conceptglobal.pmc.notifications.MyFirebaseInstanceIDService");
                        Method declaredMethod = cls.getDeclaredMethod("sendNotificationIdtoServer", null);
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(cls.newInstance(), str);
                    }
                    if (str2 == null || str2.isEmpty()) {
                        return;
                    }
                    Log.d(TAG, str2 + "");
                    return;
                } catch (Exception e3) {
                    e = e3;
                    str3 = str2;
                    PLog.e("Notification ", e.toString(), "sendNotificationIdtoServer", str3);
                    return;
                }
            }
            return;
        }
        Log.e("Notification Method", "---No DBAvailable");
    }
}
