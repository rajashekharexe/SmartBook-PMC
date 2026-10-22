.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$32;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showErrorAlertDialog(Ljava/lang/String;)V
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

    .line 3232
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3236
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3237
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->finish()V

    return-void
.end method
