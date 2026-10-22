.class public Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;
.super Landroid/os/Binder;
.source "LocationUpdatesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    return-object v0
.end method
