.class Lcom/conceptglobal/pmc/utils/LocationUtils$1;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/LocationUtils;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/LocationUtils;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/LocationUtils$1;->this$0:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
