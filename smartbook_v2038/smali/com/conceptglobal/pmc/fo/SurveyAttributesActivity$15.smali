.class Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$15;
.super Ljava/lang/Object;
.source "SurveyAttributesActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 2581
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 2

    .line 2585
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2586
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    return-void
.end method
