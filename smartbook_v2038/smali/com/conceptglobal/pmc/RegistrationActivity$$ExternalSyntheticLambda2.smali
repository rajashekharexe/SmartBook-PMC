.class public final synthetic Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/conceptglobal/pmc/RegistrationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda2;->f$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda2;->f$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->lambda$requestMissingPermissionsForTracking$3$com-conceptglobal-pmc-RegistrationActivity()V

    return-void
.end method
