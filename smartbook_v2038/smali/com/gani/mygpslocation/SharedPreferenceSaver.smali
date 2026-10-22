.class public abstract Lcom/gani/mygpslocation/SharedPreferenceSaver;
.super Ljava/lang/Object;
.source "SharedPreferenceSaver.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/gani/mygpslocation/SharedPreferenceSaver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public savePreferences(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    return-void
.end method
