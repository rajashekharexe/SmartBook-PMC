.class public final synthetic Lcom/conceptglobal/pmc/MainHomePageActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$$ExternalSyntheticLambda1;->f$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$$ExternalSyntheticLambda1;->f$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->lambda$saveNotificationIdtoPref$0$com-conceptglobal-pmc-MainHomePageActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
