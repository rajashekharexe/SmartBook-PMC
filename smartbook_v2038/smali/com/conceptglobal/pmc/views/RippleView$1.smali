.class Lcom/conceptglobal/pmc/views/RippleView$1;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/views/RippleView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/views/RippleView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/RippleView$1;->this$0:Lcom/conceptglobal/pmc/views/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/RippleView$1;->this$0:Lcom/conceptglobal/pmc/views/RippleView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/RippleView;->invalidate()V

    return-void
.end method
