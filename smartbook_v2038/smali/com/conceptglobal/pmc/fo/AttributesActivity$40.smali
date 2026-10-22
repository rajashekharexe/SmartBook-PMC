.class Lcom/conceptglobal/pmc/fo/AttributesActivity$40;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->showErrorAlertDialog(Ljava/lang/String;)V
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

    .line 4479
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$40;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4483
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4484
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$40;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->finish()V

    return-void
.end method
