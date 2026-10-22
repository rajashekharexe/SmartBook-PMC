.class Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager$1;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;Landroidx/appcompat/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 375
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->onNavigationClick()V

    return-void
.end method
