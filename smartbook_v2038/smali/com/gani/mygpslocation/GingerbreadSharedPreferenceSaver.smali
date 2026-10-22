.class public Lcom/gani/mygpslocation/GingerbreadSharedPreferenceSaver;
.super Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;
.source "GingerbreadSharedPreferenceSaver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public savePreferences(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    iget-object p1, p0, Lcom/gani/mygpslocation/GingerbreadSharedPreferenceSaver;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
