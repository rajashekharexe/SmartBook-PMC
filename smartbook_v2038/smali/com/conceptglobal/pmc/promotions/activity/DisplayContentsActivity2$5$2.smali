.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$2;
.super Ljava/lang/Object;
.source "DisplayContentsActivity2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$2;->this$1:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)I
    .locals 0

    .line 483
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 480
    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$2;->compare(Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)I

    move-result p1

    return p1
.end method
