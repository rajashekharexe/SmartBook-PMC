.class Lcom/conceptglobal/loation/GetLocation$1;
.super Ljava/lang/Object;
.source "GetLocation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/loation/GetLocation;->showRetryAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/loation/GetLocation;


# direct methods
.method constructor <init>(Lcom/conceptglobal/loation/GetLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation$1;->this$0:Lcom/conceptglobal/loation/GetLocation;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$1;->this$0:Lcom/conceptglobal/loation/GetLocation;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/loation/GetLocation;->access$1(Lcom/conceptglobal/loation/GetLocation;Z)V

    .line 124
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$1;->this$0:Lcom/conceptglobal/loation/GetLocation;

    new-instance v0, Lcom/conceptglobal/loation/GetLocation$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/loation/GetLocation$1;->this$0:Lcom/conceptglobal/loation/GetLocation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/loation/GetLocation$LocationControl;-><init>(Lcom/conceptglobal/loation/GetLocation;Lcom/conceptglobal/loation/GetLocation$LocationControl;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/loation/GetLocation;->access$10(Lcom/conceptglobal/loation/GetLocation;Lcom/conceptglobal/loation/GetLocation$LocationControl;)V

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$1;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$11(Lcom/conceptglobal/loation/GetLocation;)Lcom/conceptglobal/loation/GetLocation$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/loation/GetLocation$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
