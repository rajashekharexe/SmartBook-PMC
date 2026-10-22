.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;
.super Landroid/content/BroadcastReceiver;
.source "SAAttributeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 2732
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 2736
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

    .line 2737
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2738
    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v10, v10, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2739
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 2740
    invoke-virtual {v10, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 2741
    invoke-virtual {v10, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2742
    iget-object v11, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v11, v11, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    .line 2743
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 2744
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 2745
    iget-object v11, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v11, v11, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v11, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2755
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    .line 2756
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2757
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2761
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2762
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2764
    :cond_2
    const-string v2, ""

    sput-object v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    .line 2765
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2766
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2770
    :cond_3
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2772
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 2777
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v1, 0x0

    .line 2778
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2779
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2783
    const-string v3, "CampaignMissedCall"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2784
    const-string v4, "FarmerDetails"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_4

    .line 2787
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2788
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2789
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2790
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 2791
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2792
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2797
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 2799
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2800
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2801
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 2802
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2803
    new-instance v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 2804
    invoke-virtual {v3, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 2805
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2806
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 2808
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    .line 2809
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2818
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string p2, "CAMPAIGNS_FARMERS_LIST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2820
    const-string p2, "Campaigns_Farmers_Count"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2821
    const-string p2, "Campaigns_SartiFarmers_Count"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2822
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2824
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
