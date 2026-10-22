package com.conceptglobal.pmc.notifications;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Build;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.ToDoActivity;
import com.conceptglobal.pmc.model.GetSegmentationDetails;
import com.conceptglobal.pmc.model.NotificationResponseModel;
import com.conceptglobal.pmc.model.NotifyAssignDisplayModel;
import com.conceptglobal.pmc.model.SendAckList;
import com.conceptglobal.pmc.model.SendDetailsForFarmerDetails;
import com.conceptglobal.pmc.service.MasterSyncService;
import com.conceptglobal.pmc.utils.NotificationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.google.gson.Gson;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    private static final String TAG = "MyFirebaseMsgService";
    private SendAckList objAck = new SendAckList();

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        try {
            Log.d("FCM--", "remoteMessage" + remoteMessage.getData());
            if (remoteMessage.getData().get("body").contains("missedCallsDocument") || remoteMessage.getData().get("body").contains("vmnExpiredDocument")) {
                return;
            }
            try {
                if (remoteMessage.getData().size() > 0) {
                    Log.e(TAG, "Data Payload: " + remoteMessage.getData().toString());
                    try {
                        handleDataMessage(new JSONObject(remoteMessage.getData().toString()));
                        getApplicationContext().startService(new Intent(getApplicationContext(), (Class<?>) MasterSyncService.class));
                    } catch (Exception e) {
                        Log.e(TAG, "Exception: " + e.getMessage());
                    }
                }
            } catch (Exception e2) {
                PLog.e(TAG, e2.toString());
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            Log.d("failerMessaeg", "Fail");
        }
    }

    private void parseNeoCampaignData(RemoteMessage remoteMessage) {
        try {
            Log.d("FCM--", "Neocampaign Notification" + remoteMessage.toString());
            if (remoteMessage.getData().get("body").contains("missedCallsDocument")) {
                String string = new JSONObject(new JSONObject(remoteMessage.getData().get("body").toString()).get("missedCallsDocument").toString()).getString("MobileNumber");
                Intent intent = new Intent("Campaign_FARMERS_List");
                intent.putExtra("MobileNumber", string);
                intent.putExtra("remoteMessage", remoteMessage.toString());
                if (remoteMessage.getData().get("vmnExpiredDocument") != null) {
                    intent.putExtra("CampaignStatus", "Closed");
                }
                Intent intent2 = new Intent(NeoCampaignConstants.CAMPAIGN_DATA);
                intent2.putExtra("Data", remoteMessage.getData().get("body").toString());
                LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent);
                LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private Map<String, Object> convertRemoteMessageToMap(RemoteMessage remoteMessage) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageId", remoteMessage.getMessageId());
        hashMap.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, remoteMessage.getData());
        hashMap.put("notification", convertNotificationToMap(remoteMessage.getNotification()));
        hashMap.put(Constants.MessagePayloadKeys.FROM, remoteMessage.getFrom());
        return hashMap;
    }

    private static Map<String, Object> convertNotificationToMap(RemoteMessage.Notification notification) {
        HashMap hashMap = new HashMap();
        hashMap.put(SettingsJsonConstants.PROMPT_TITLE_KEY, notification.getTitle());
        hashMap.put("body", notification.getBody());
        return hashMap;
    }

    private void checkForAssignments(String str) {
        NotifyAssignDisplayModel notifyAssignDetails;
        NotificationResponseModel notificationResponseModel = (NotificationResponseModel) new Gson().fromJson((Reader) new StringReader(str), NotificationResponseModel.class);
        ArrayList<Integer> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (notificationResponseModel.getAssignments() != null && notificationResponseModel.getAssignments().size() > 0) {
            for (Integer num : notificationResponseModel.getAssignments()) {
                try {
                    if (!GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getIsAssignmentInDb(num.intValue()))) {
                        arrayList.add(num);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        getPMCFarmerDetailsFromServer();
        sendAcktoServer();
        for (Integer num2 : arrayList) {
            try {
                if (GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getIsAssignmentInDb(num2.intValue())) && (notifyAssignDetails = GetDataFromDB.getInstance().getNotifyAssignDetails(Queries.getInstance().getNotifyAssignmentInDb(num2.intValue()))) != null) {
                    arrayList2.add(notifyAssignDetails);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (arrayList2.size() > 0) {
            sendAssignmentNotification(arrayList2);
        }
    }

    private void sendAssignmentNotification(List<NotifyAssignDisplayModel> list) {
        Intent intent = new Intent(this, (Class<?>) MainHomePageActivity.class);
        intent.addFlags(268435456);
        Notification.Builder contentIntent = new Notification.Builder(this).setSmallIcon(R.drawable.applogo).setContentTitle("PMC").setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(PendingIntent.getActivity(this, 0, intent, (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 1073741824));
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (list.size() > 0 && list.size() == 1) {
            NotifyAssignDisplayModel notifyAssignDisplayModel = list.get(0);
            contentIntent.setContentText("You have " + list.size() + " new assignment");
            Notification.InboxStyle inboxStyle = new Notification.InboxStyle();
            inboxStyle.addLine(notifyAssignDisplayModel.getActivityAssignmentId());
            inboxStyle.addLine(notifyAssignDisplayModel.getActivitySegmentName());
            inboxStyle.setBigContentTitle(notifyAssignDisplayModel.getActivityMasterName() + "");
            inboxStyle.setSummaryText(notifyAssignDisplayModel.getPackageName() + "");
            contentIntent.setStyle(inboxStyle);
            notificationManager.notify(0, contentIntent.build());
            return;
        }
        if (list.size() <= 0 || list.size() <= 1) {
            return;
        }
        contentIntent.setContentText("You have " + list.size() + " new assignments");
        contentIntent.setNumber(list.size());
        Notification.InboxStyle inboxStyle2 = new Notification.InboxStyle();
        inboxStyle2.setBigContentTitle("New Assignments");
        for (int i = 0; i < list.size(); i++) {
            inboxStyle2.addLine("1 new " + list.get(i).getActivityMasterName() + " activity assigned");
            if (i == 3) {
                break;
            }
        }
        if (list.size() > 4) {
            inboxStyle2.setSummaryText("+ " + (list.size() - 4) + " more...");
        }
        contentIntent.setStyle(inboxStyle2);
        notificationManager.notify(0, contentIntent.build());
    }

    private void getPMCFarmerDetailsFromServer() {
        Log.i(TAG, "getPMCFarmerDetailsFromServer");
        Log.i("Segmentation start Time", Calendar.getInstance().getTime().toString());
        String str = null;
        try {
            SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
            Gson gson = new Gson();
            sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sendDetailsForFarmerDetails);
            str = WebService.getInstance().sendRequest(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSegmentationDetails());
            StringBuilder sb = new StringBuilder();
            sb.append(json);
            sb.append("");
            Log.d("getSegOBJ", sb.toString());
            Log.d("getSegOBJResp", str + "");
            if (str != null && str.trim().length() > 12) {
                this.objAck = InsertDataIntoDB.insertFarmersList((GetSegmentationDetails) new Gson().fromJson((Reader) new StringReader(str), GetSegmentationDetails.class), this.objAck);
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "getPMCFarmerDetailsFromServer", str);
        }
        Log.i("segmentation end Time", Calendar.getInstance().getTime().toString());
    }

    private void sendAcktoServer() {
        Log.i(TAG, "sendAcktoServer");
        Log.i("segm ack start Time", Calendar.getInstance().getTime().toString());
        try {
            Gson gson = new Gson();
            this.objAck.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(this.objAck);
            Log.d("getAckReceiptOBJ", json + "");
            String sendRequest = WebService.getInstance().sendRequest(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSendACK());
            if (sendRequest != null) {
                sendRequest.contains(getApplicationContext().getResources().getString(R.string.success_message));
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        Log.i("segm ack end Time", Calendar.getInstance().getTime().toString());
    }

    private void handleDataMessage(JSONObject jSONObject) {
        Log.e(TAG, "push json: " + jSONObject.toString());
        try {
            jSONObject.getJSONObject("Data");
            JSONObject jSONObject2 = jSONObject.getJSONObject("notification");
            if (!NotificationUtils.isAppIsInBackground(getApplicationContext())) {
                Intent intent = new Intent("SyncStatus");
                intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, "" + jSONObject2.getString(SettingsJsonConstants.PROMPT_TITLE_KEY));
                intent.putExtra("Message", "" + jSONObject2.getString("body"));
                LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
                new NotificationUtils(getApplicationContext()).playNotificationSound();
            } else {
                Intent intent2 = new Intent(getApplicationContext(), (Class<?>) ToDoActivity.class);
                intent2.putExtra("message", "");
                showNotificationMessage(getApplicationContext(), jSONObject2.getString(SettingsJsonConstants.PROMPT_TITLE_KEY), jSONObject2.getString("body"), null, intent2);
            }
        } catch (JSONException e) {
            Log.e(TAG, "Json Exception: " + e.getMessage());
        } catch (Exception e2) {
            Log.e(TAG, "Exception: " + e2.getMessage());
        }
    }

    private void showNotificationMessage(Context context, String str, String str2, String str3, Intent intent) {
        NotificationUtils notificationUtils = new NotificationUtils(context);
        intent.setFlags(268468224);
        notificationUtils.showNotificationMessage(str, str2, str3, intent);
    }
}
