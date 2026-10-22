.class Lcom/conceptglobal/loation/GetLocation$LocationControl$1;
.super Ljava/lang/Object;
.source "GetLocation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/loation/GetLocation$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/loation/GetLocation$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/loation/GetLocation$LocationControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl$1;->this$1:Lcom/conceptglobal/loation/GetLocation$LocationControl;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl$1;->this$1:Lcom/conceptglobal/loation/GetLocation$LocationControl;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation$LocationControl;->access$3(Lcom/conceptglobal/loation/GetLocation$LocationControl;)Lcom/conceptglobal/loation/GetLocation;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/loation/GetLocation;->access$1(Lcom/conceptglobal/loation/GetLocation;Z)V

    return-void
.end method
