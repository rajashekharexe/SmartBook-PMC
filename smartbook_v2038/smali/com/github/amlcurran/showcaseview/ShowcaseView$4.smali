.class Lcom/github/amlcurran/showcaseview/ShowcaseView$4;
.super Ljava/lang/Object;
.source "ShowcaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$4;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 828
    iget-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$4;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    return-void
.end method
