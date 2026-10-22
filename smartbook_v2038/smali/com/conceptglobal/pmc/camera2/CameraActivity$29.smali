.class Lcom/conceptglobal/pmc/camera2/CameraActivity$29;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 1671
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 1677
    const-string v0, "ok"

    const-string v1, "PMC POC"

    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v2, v3, :cond_0

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_8

    goto/16 :goto_2

    .line 1686
    :cond_0
    :try_start_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 1688
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    goto/16 :goto_2

    .line 1689
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v7, v3, :cond_3

    .line 1690
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v6, v3, :cond_2

    goto :goto_0

    .line 1700
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_a

    .line 1701
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2, v7}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2102(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)I

    .line 1702
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    goto/16 :goto_2

    .line 1692
    :cond_3
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 1694
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_4

    goto :goto_1

    .line 1698
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2300(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    goto/16 :goto_2

    .line 1695
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2, v7}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2102(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)I

    .line 1696
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .line 1706
    :try_start_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1707
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v5, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$1;

    invoke-direct {v5, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$29;)V

    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1714
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1715
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1722
    :cond_6
    :try_start_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 1724
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 1725
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_a

    .line 1726
    :cond_7
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2, v4}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2102(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    .line 1732
    :try_start_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1733
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$2;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$2;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$29;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1740
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1741
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1748
    :cond_8
    :try_start_5
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    .line 1749
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_a

    .line 1750
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1, v7}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2102(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)I

    .line 1751
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1754
    :try_start_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1755
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$3;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$3;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$29;)V

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1762
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1763
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 1770
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1771
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$4;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$29;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1778
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1779
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1810
    :try_start_0
    invoke-direct {p0, p3}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->process(Landroid/hardware/camera2/CaptureResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1812
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1813
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "PMC POC"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$6;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$6;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$29;)V

    const-string v0, "ok"

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1820
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1821
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1789
    :try_start_0
    invoke-direct {p0, p3}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->process(Landroid/hardware/camera2/CaptureResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1791
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1792
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "PMC POC"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$5;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29$5;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$29;)V

    const-string v0, "ok"

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1799
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1800
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
