.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$1;
.super Ljava/lang/Object;
.source "DisplayContentsActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v0, "isFromTestimonial"

    const/16 v1, 0x6f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
