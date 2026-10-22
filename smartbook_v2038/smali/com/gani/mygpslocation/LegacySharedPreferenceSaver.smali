.class public Lcom/gani/mygpslocation/LegacySharedPreferenceSaver;
.super Lcom/gani/mygpslocation/SharedPreferenceSaver;
.source "LegacySharedPreferenceSaver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/SharedPreferenceSaver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public savePreferences(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
