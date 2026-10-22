.class Lcom/conceptglobal/pmc/fo/AttributesActivity$17;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
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

    .line 3442
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$17;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3446
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$17;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$4102(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I

    .line 3447
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$17;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showDialog(I)V

    return-void
.end method
