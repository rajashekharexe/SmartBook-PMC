.class Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$13;
.super Ljava/lang/Object;
.source "AttributesDynamicTableFarmatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->showSuggesionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

.field final synthetic val$dialogSuggesions:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2419
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$13;->val$dialogSuggesions:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2422
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment$13;->val$dialogSuggesions:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
