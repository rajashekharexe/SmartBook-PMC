.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;
.super Landroid/content/BroadcastReceiver;
.source "FarmerFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 3466
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 3470
    const-string p1, "mobilenumber"

    const-string v0, "IsSaarthieFarmer"

    const-string v1, "MissedCallsList"

    const-string v2, "updateCampaignId"

    const-string v3, "BUNDLE"

    const-string v4, "campaignCompleted"

    const-string v5, "MobileNumber"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, ".543"

    const/16 v8, 0x21f

    const-string v9, "880."

    if-eqz v6, :cond_0

    .line 3471
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3472
    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v10, v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3473
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 3474
    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 3475
    invoke-virtual {v10, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 3476
    iget-object v11, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v11, v11, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    .line 3477
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 3478
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 3479
    iget-object v11, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v11, v11, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v11, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3489
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    .line 3490
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3491
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3494
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3495
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3496
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3498
    :cond_2
    const-string v2, ""

    sput-object v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    .line 3499
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4002(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3500
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3504
    :cond_3
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3506
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 3511
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v1, 0x0

    .line 3512
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 3513
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 3517
    const-string v3, "CampaignMissedCall"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 3518
    const-string v4, "FarmerDetails"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_4

    .line 3521
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3522
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3523
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3524
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 3525
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3526
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 3531
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 3533
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3534
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3535
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 3536
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3537
    new-instance v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 3538
    invoke-virtual {v3, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 3539
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 3540
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 3541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 3542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 3543
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3552
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string p2, "CAMPAIGNS_FARMERS_LIST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3554
    const-string p2, "Campaigns_Farmers_Count"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3555
    const-string p2, "Campaigns_SartiFarmers_Count"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3556
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 3558
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
