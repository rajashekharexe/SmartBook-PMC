.class Lcom/conceptglobal/pmc/fo/AttributesActivity$37;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->loadData()V
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

    .line 4155
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$37;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4157
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$37;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    .line 4158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
