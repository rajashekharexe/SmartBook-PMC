.class public final synthetic Lcom/conceptglobal/pmc/ChangePasswordActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$$ExternalSyntheticLambda0;->f$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$$ExternalSyntheticLambda0;->f$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->lambda$sendNotificationIdtoServer$0$com-conceptglobal-pmc-ChangePasswordActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
