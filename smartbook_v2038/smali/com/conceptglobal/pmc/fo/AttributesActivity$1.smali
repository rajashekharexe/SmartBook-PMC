.class Lcom/conceptglobal/pmc/fo/AttributesActivity$1;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 533
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const-string v0, "Before start Farmer Attendance Campaign, Please click on \'START\' button"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    return-void

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Please select "

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 540
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/content/Context;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 544
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 545
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 546
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/content/Context;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 556
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-wide/16 v2, 0x0

    const-string v0, ""

    if-eqz p1, :cond_6

    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 560
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 561
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_rewardsConformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1300(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    goto :goto_3

    .line 563
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    .line 564
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-lez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 565
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0, v1, p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setBoolean(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_3

    .line 557
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-lez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 558
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    :goto_3
    return-void
.end method
