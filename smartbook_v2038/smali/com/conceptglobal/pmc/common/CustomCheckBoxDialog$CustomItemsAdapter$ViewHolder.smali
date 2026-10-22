.class public Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CustomCheckBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field itemchkbox:Landroid/widget/CheckBox;

.field itemid:Landroid/widget/TextView;

.field itemname:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
