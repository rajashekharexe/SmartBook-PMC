.class Lcom/conceptglobal/pmc/fotracker/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$5;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 214
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 215
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers"

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$5;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
