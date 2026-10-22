.class public Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;
.super Lcom/conceptglobal/imaterialdesign/app/Dialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;,
        Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;,
        Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
    }
.end annotation


# instance fields
.field private mCornerRadius:F

.field private mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    sget v0, Lcom/conceptglobal/imaterialdesign/R$style;->Material_App_Dialog_TimePicker_Light:I

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mCornerRadius:F

    return p0
.end method


# virtual methods
.method public applyStyle(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->applyStyle(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    if-nez p1, :cond_0

    return-object p0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->applyStyle(I)V

    const/4 p1, -0x1

    .line 75
    invoke-virtual {p0, p1, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->layoutParams(II)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public cornerRadius(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 86
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mCornerRadius:F

    .line 87
    invoke-super {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cornerRadius(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedTime(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getFormattedTime(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHour()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getMinute()I

    move-result v0

    return v0
.end method

.method public hour(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setHour(I)V

    return-object p0
.end method

.method public layoutParams(II)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    const/4 p1, -0x1

    .line 81
    invoke-super {p0, p1, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->layoutParams(II)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public minute(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setMinute(I)V

    return-object p0
.end method

.method protected onCreate()V
    .locals 2

    .line 63
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;-><init>(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    .line 64
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public onTimeChangedListener(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mTimePickerLayout:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setOnTimeChangedListener(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;)V

    return-object p0
.end method
