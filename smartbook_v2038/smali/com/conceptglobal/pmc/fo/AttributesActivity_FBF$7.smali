.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$7;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->showNoInternetDialog(Ljava/lang/String;)V
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

    .line 1692
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$7;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
