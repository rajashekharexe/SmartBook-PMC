.class public Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;
.super Lcom/gani/mygpslocation/LegacySharedPreferenceSaver;
.source "FroyoSharedPreferenceSaver.java"


# instance fields
.field protected backupManager:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/LegacySharedPreferenceSaver;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;->backupManager:Landroid/app/backup/BackupManager;

    return-void
.end method


# virtual methods
.method public savePreferences(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    iget-object p1, p0, Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
