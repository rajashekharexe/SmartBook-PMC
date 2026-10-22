.class Lcom/conceptglobal/pmc/fo/AttributesActivity$38;
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

    .line 4162
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$38;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 4164
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$38;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5500(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    .line 4165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
