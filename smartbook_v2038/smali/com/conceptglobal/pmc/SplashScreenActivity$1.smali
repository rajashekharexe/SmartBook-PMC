.class Lcom/conceptglobal/pmc/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 10

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dburl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x5

    if-le p2, v0, :cond_3

    const/4 p2, 0x0

    .line 295
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 299
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/conceptglobal/pmc/model/DatabaseURL;

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DatabaseURL;

    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DatabaseURL;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DatabaseURL;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DatabaseURL;->getURL()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DatabaseURL;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v3, Lcom/conceptglobal/pmc/common/DBDownloader;

    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$100(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/conceptglobal/pmc/common/DBDownloader;-><init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    .line 306
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DatabaseURL;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDBDOWNLOADPATH()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$200(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    move-result-object v7

    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$300(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    move-result-object v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$400(Lcom/conceptglobal/pmc/SplashScreenActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/conceptglobal/pmc/common/DBDownloader;->dataBaseDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$500(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$500(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 319
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_2

    .line 320
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$500(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$500(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001e8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType10:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    .line 327
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$600(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 330
    :cond_4
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_5

    .line 331
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10025d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType10:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    .line 332
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 331
    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$600(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 334
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10025a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType10:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    .line 335
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$600(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
