.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$15;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;
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

    .line 2442
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 2

    .line 2446
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2447
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    return-void
.end method
