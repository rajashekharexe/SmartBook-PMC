.class Lcom/conceptglobal/pmc/fotracker/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/MainActivity;->requestPermissions()V
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

    .line 167
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
