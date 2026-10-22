.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;
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

    .line 1915
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1920
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    check-cast p1, Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2302(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1921
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->showDialog(I)V

    .line 1922
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
