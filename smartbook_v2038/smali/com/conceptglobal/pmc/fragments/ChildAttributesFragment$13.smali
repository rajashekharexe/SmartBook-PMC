.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$13;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1932
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
