.class public final Lcom/conceptglobal/pmc/fotracker/util/SharedPrefManager;
.super Ljava/lang/Object;
.source "SharedPrefManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppPatchTime(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3

    .line 26
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTUPDATEDTIME()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 27
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTUPDATEDTIME()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getFOName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYFONAME()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYFONAME()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPMCLanguage(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 51
    const-string v1, "pmcLanguage"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    .line 52
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPMCSyncTime(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3

    .line 39
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTRETAILERSUPDATEDTIME()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 40
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTRETAILERSUPDATEDTIME()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static isString()V
    .locals 0

    return-void
.end method

.method public static setApplicationPatchTime(Landroid/content/Context;)V
    .locals 4

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTUPDATEDTIME()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 34
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTUPDATEDTIME()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPMCLanguage(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    const-string v1, "pmcLanguage"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 59
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPMCSyncTime(Landroid/content/Context;)V
    .locals 4

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTRETAILERSUPDATEDTIME()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 47
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYLASTRETAILERSUPDATEDTIME()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static storeFOName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYFONAME()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getKEYFONAME()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
