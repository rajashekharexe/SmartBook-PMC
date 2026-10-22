.class Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$2;
.super Ljava/lang/Object;
.source "FarmerRegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setFilters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$002(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    return-void
.end method
