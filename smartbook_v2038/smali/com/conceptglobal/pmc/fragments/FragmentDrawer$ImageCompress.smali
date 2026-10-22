.class Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;
.super Landroid/os/AsyncTask;
.source "FragmentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FragmentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCompress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 294
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 303
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    :try_start_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertProfileImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 314
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 315
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->access$500(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Lcom/conceptglobal/pmc/utils/CircleImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
