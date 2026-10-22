.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;
.super Ljava/lang/Object;
.source "AudianceChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 2041
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 2046
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    check-cast p1, Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2402(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 2047
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->showDialog(I)V

    .line 2048
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$12;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
