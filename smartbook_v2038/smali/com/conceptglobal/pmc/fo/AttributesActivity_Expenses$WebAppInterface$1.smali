.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface$1;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->saverequired(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;)V
    .locals 0

    .line 3319
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface$1;->this$1:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3321
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
