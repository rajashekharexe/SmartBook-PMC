.class Lcom/conceptglobal/loation/GetLocation$3;
.super Ljava/lang/Object;
.source "GetLocation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/loation/GetLocation;->showGPSAlert()V
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
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation$3;->this$0:Lcom/conceptglobal/loation/GetLocation;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/conceptglobal/loation/GetLocation$3;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p2}, Lcom/conceptglobal/loation/GetLocation;->access$0(Lcom/conceptglobal/loation/GetLocation;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
