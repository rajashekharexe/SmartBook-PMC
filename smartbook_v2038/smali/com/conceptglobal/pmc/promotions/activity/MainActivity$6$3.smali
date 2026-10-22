.class Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$3;->this$1:Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)I
    .locals 0

    .line 278
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getActiveStartDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getActiveStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 275
    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$3;->compare(Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)I

    move-result p1

    return p1
.end method
