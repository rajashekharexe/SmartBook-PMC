.class Lcom/conceptglobal/pmc/BaseActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/BaseActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/BaseActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$4;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 182
    :try_start_0
    const-string p1, "Message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/pmc/BaseActivity$4;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/conceptglobal/pmc/BaseActivity$4;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    const v2, 0x7f09045e

    .line 189
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0086

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090436

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    new-instance p1, Landroid/widget/Toast;

    iget-object p2, p0, Lcom/conceptglobal/pmc/BaseActivity$4;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x50

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, p2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    const/4 p2, 0x1

    .line 198
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
