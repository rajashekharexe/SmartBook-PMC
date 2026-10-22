.class Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;
.super Ljava/lang/Object;
.source "FastScrollBubble.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/ifastscroll/FastScrollBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;Lcom/conceptglobal/ifastscroll/FastScrollBubble$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;-><init>(Lcom/conceptglobal/ifastscroll/FastScrollBubble;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScrollBubble$BubbleHider;->this$0:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-static {v0}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->access$200(Lcom/conceptglobal/ifastscroll/FastScrollBubble;)V

    return-void
.end method
