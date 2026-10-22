.class Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$10;
.super Ljava/lang/Object;
.source "AttributesActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V
    .locals 0

    .line 2135
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$2202(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)I

    .line 2140
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->showDialog(I)V

    return-void
.end method
