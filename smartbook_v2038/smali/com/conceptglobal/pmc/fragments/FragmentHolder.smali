.class public Lcom/conceptglobal/pmc/fragments/FragmentHolder;
.super Ljava/lang/Object;
.source "FragmentHolder.java"


# static fields
.field private static instance:Lcom/conceptglobal/pmc/fragments/FragmentHolder;


# instance fields
.field private webViewFragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/fragments/FragmentHolder;
    .locals 1

    .line 12
    sget-object v0, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->instance:Lcom/conceptglobal/pmc/fragments/FragmentHolder;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FragmentHolder;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/FragmentHolder;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->instance:Lcom/conceptglobal/pmc/fragments/FragmentHolder;

    .line 15
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->instance:Lcom/conceptglobal/pmc/fragments/FragmentHolder;

    return-object v0
.end method


# virtual methods
.method public getFragment()Lcom/conceptglobal/pmc/fragments/WebViewFragment;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->webViewFragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    return-object v0
.end method

.method public setFragment(Lcom/conceptglobal/pmc/fragments/WebViewFragment;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->webViewFragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    return-void
.end method
