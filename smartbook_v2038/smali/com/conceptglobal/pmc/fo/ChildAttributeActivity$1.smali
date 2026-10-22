.class Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;
.super Ljava/lang/Object;
.source "ChildAttributeActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->access$000(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)Landroidx/fragment/app/FragmentTabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTab()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->access$100(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->access$000(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)Landroidx/fragment/app/FragmentTabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;->access$000(Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;)Landroidx/fragment/app/FragmentTabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTab()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTab(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
