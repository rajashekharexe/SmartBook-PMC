.class Lcom/conceptglobal/pmc/locationprovider/FetchLocation$2;
.super Ljava/lang/Object;
.source "FetchLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$2;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$2;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$400(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 283
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$2;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$500(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;->onTimerTimeOut()V

    return-void
.end method
