.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$10;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


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

    .line 1757
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 2

    .line 1761
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1762
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$10;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    return-void
.end method
