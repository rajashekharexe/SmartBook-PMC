.class Lcom/conceptglobal/pmc/locationprovider/FetchLocation$5;
.super Ljava/lang/Object;
.source "FetchLocation.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->stopLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$5;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 374
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$5;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$802(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
