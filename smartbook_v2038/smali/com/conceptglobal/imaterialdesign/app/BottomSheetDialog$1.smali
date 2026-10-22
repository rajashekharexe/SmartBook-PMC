.class Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$1;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$001(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
