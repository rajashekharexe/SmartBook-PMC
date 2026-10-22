.class Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader$1;
.super Ljava/lang/Object;
.source "ApplicationPatch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;


# direct methods
.method constructor <init>(Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader$1;->this$1:Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
