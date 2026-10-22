.class public Lcom/conceptglobal/pmc/help/LoginHelp;
.super Landroid/app/Activity;
.source "LoginHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/help/LoginHelp;->requestWindowFeature(I)Z

    const p1, 0x7f0c00db

    .line 16
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/help/LoginHelp;->setContentView(I)V

    return-void
.end method
