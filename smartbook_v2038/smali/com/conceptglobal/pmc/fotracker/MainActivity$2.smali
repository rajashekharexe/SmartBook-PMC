.class Lcom/conceptglobal/pmc/fotracker/MainActivity$2;
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

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$300(Lcom/conceptglobal/pmc/fotracker/MainActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$400(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$000(Lcom/conceptglobal/pmc/fotracker/MainActivity;)Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    :goto_0
    return-void
.end method
