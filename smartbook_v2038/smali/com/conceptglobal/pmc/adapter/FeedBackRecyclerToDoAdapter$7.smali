.class Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$7;
.super Ljava/lang/Object;
.source "FeedBackRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->showResolutionDailog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$7;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 654
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$7;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
