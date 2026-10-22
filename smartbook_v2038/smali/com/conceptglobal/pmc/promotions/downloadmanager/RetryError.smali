.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryError;
.super Ljava/lang/Exception;
.source "RetryError.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    const-string v0, "Maximum retry exceeded"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
