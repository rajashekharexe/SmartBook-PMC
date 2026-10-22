.class Lcom/conceptglobal/pmc/fotracker/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/MainActivity;->onStart()V
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

    .line 103
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$3;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$3;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$000(Lcom/conceptglobal/pmc/fotracker/MainActivity;)Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->removeLocationUpdates()V

    return-void
.end method
