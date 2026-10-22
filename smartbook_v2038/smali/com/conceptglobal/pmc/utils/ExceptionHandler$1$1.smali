.class Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 126
    const-string p1, "android.intent.action.MAIN"

    iget-object p2, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    iget-object p2, p2, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/high16 v0, 0x14000000

    .line 133
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 138
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 139
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    iget-object v3, v3, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 140
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 142
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 143
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 149
    :catch_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object p2, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;->this$1:Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;

    iget-object p2, p2, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 156
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
