.class Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$5;
.super Ljava/lang/Object;
.source "FeedBackRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->sendComplaint(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$5;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 373
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
