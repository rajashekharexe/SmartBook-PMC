.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$31;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertExp(Ljava/lang/String;Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

.field final synthetic val$selval:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3214
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$31;->val$selval:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3219
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$31;->val$selval:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;->value:Z

    return-void
.end method
