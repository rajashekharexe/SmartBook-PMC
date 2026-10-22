.class Lcom/conceptglobal/pmc/fragments/AddFarmer$38$3;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;)V
    .locals 0

    .line 5327
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$3;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5330
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
