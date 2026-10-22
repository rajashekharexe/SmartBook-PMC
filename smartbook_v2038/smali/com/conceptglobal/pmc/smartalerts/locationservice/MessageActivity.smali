.class public Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private id:I

.field message:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->id:I

    return-void
.end method

.method private closeNotificationAndDialog()V
    .locals 2

    .line 77
    iget v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 78
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 79
    iget v1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->closeNotificationAndDialog()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->closeNotificationAndDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0c00dd

    .line 48
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f0902f8

    .line 54
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->message:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->closeNotificationAndDialog()V

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "options menu: unknown item selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onResume()V
    .locals 4

    .line 60
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notificationId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->id:I

    .line 63
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;->message:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
