.class Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface$1;
.super Ljava/lang/Object;
.source "WebviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;->saverequiredfordistributor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
