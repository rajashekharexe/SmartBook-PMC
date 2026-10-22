.class Lcom/crashlytics/android/core/CrashlyticsController$20$1;
.super Ljava/util/HashMap;
.source "CrashlyticsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController$20;->writeTo(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/crashlytics/android/core/CrashlyticsController$20;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController$20;)V
    .locals 2

    .line 1167
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->this$1:Lcom/crashlytics/android/core/CrashlyticsController$20;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1168
    const-string v0, "app_identifier"

    iget-object v1, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->val$appIdentifier:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    iget-object v0, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1700(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/AppData;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/core/AppData;->apiKey:Ljava/lang/String;

    const-string v1, "api_key"

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string v0, "version_code"

    iget-object v1, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->val$versionCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    const-string v0, "version_name"

    iget-object v1, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->val$versionName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string v0, "install_uuid"

    iget-object v1, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->val$installUuid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    iget v0, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->val$deliveryMechanism:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "delivery_mechanism"

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    iget-object v0, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 1175
    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1800(Lcom/crashlytics/android/core/CrashlyticsController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/crashlytics/android/core/CrashlyticsController$20;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {p1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1800(Lcom/crashlytics/android/core/CrashlyticsController;)Ljava/lang/String;

    move-result-object p1

    .line 1174
    :goto_0
    const-string v0, "unity_version"

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/CrashlyticsController$20$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
