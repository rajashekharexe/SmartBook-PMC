.class public Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FlutterEmbeddingActivity.java"


# static fields
.field private static isRoutePoped:Z = false


# instance fields
.field private activityName:Ljava/lang/String;

.field private campaignID:Ljava/lang/String;

.field private crop:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private products:Ljava/lang/String;

.field private retailerContactIDs:Ljava/lang/String;

.field private retailerNames:Ljava/lang/String;

.field private transId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "campaignID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->campaignID:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "transId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->transId:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "activityName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->activityName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Crop"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->crop:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Product"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->products:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->location:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RetailerName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->retailerNames:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RetailerContactID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FlutterEmbeddingActivity;->retailerContactIDs:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 350
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
