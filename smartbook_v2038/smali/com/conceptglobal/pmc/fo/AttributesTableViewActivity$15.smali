.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$15;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 2876
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2880
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3702(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)I

    .line 2881
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->showDialog(I)V

    return-void
.end method
