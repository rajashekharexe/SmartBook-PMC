.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$18;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isValidData(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 2221
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$18;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2224
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$18;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$18;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
