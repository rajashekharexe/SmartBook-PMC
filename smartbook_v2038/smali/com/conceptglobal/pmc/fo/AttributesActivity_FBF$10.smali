.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$10;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)V
    .locals 0

    .line 2161
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$2202(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;I)I

    .line 2166
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->showDialog(I)V

    return-void
.end method
