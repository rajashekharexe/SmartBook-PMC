.class Lcom/conceptglobal/pmc/MainHomePageActivity$18;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showOverLayWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$18;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$18;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$700(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v0

    .line 1059
    div-int/lit8 v0, v0, 0x2

    .line 1061
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method
