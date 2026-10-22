.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$21;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 2955
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 2

    .line 2959
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2960
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$3900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    return-void
.end method
