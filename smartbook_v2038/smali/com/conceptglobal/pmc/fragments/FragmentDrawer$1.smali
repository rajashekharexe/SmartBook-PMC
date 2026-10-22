.class Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;
.super Ljava/lang/Object;
.source "FragmentDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 139
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    .line 144
    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->access$000(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Ljava/io/File;

    move-result-object v1

    .line 142
    const-string v2, "com.conceptglobal.pmcdeepakfertilizers.provider"

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    const-string v1, "output"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_0

    .line 148
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 149
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
