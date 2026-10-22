.class Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;
.super Ljava/lang/Object;
.source "AttributesTableFarmatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V
    .locals 0

    .line 2215
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 2220
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    check-cast p1, Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2002(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 2221
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->showDialog(I)V

    .line 2222
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$400(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2100(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2300(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I

    move-result v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2400(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
