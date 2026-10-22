.class public Lcom/conceptglobal/pmc/fragments/AttendanceFragment;
.super Landroidx/fragment/app/Fragment;
.source "AttendanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATEDIALOGID:I


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private con:Landroid/content/Context;

.field private etFromDate:Landroid/widget/EditText;

.field private etLeaveType:Landroid/widget/EditText;

.field private etNoOfdays:Landroid/widget/EditText;

.field private etRemarks:Landroid/widget/EditText;

.field private etSelected:Landroid/widget/EditText;

.field private etToDate:Landroid/widget/EditText;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mFiledStr:Ljava/lang/String;

.field private mMonth:I

.field private mYear:I

.field rootView:Landroid/view/View;

.field private tvLeave:Landroid/widget/TextView;

.field private tvLeaveType:Landroid/widget/TextView;

.field private tvNoOfDays:Landroid/widget/TextView;

.field private tvReason:Landroid/widget/TextView;

.field private tvToDate:Landroid/widget/TextView;

.field private tvfromDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mFiledStr:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/AttendanceFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fragments/AttendanceFragment;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fragments/AttendanceFragment;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/fragments/AttendanceFragment;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/AttendanceFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->updateDisplay()V

    return-void
.end method

.method private initialization()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0904b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvLeaveType:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvfromDate:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0904de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvToDate:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0904bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvNoOfDays:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etLeaveType:Landroid/widget/EditText;

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etNoOfdays:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->btnSave:Landroid/widget/Button;

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0904b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvLeave:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0904c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvReason:Landroid/widget/TextView;

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDay:I

    const/4 v1, 0x2

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mMonth:I

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mYear:I

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvLeaveType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvLeaveType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvfromDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvfromDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvToDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvToDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etNoOfdays:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private insertData()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etLeaveType:Landroid/widget/EditText;

    const-string v1, "Select Leave type"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    const-string v1, "Select from date"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    const-string v1, "Select to date"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 177
    :cond_2
    new-instance v0, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setFromDate(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setToDate(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setLeaveType(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etNoOfdays:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setNoOfDays(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etRemarks:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setRemarks(Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAttendanceData(Lcom/conceptglobal/pmc/model/AttendanceModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Data saved successfully"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/MainHomePageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->displayView(I)V

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mFiledStr:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 227
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etSelected:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 133
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etSelected:Landroid/widget/EditText;

    .line 139
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->con:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "Please select from date"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 117
    :sswitch_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->con:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 119
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->con:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v4, "AttendanceType"

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesBasedItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->tvLeave:Landroid/widget/TextView;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 121
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 122
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 123
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    :sswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etFromDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etSelected:Landroid/widget/EditText;

    .line 130
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->con:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_1

    .line 153
    :sswitch_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->insertData()V

    :catch_0
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900af -> :sswitch_3
        0x7f09016d -> :sswitch_2
        0x7f090172 -> :sswitch_1
        0x7f090180 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 196
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->mDay:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->con:Landroid/content/Context;

    const p3, 0x7f0c001f

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    .line 68
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->initialization()V

    .line 69
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    .locals 4

    .line 239
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    .line 245
    div-long/2addr v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x0

    .line 246
    const-string v2, ""

    cmp-long v3, v0, p1

    if-gtz v3, :cond_0

    .line 247
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etToDate:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etNoOfdays:Landroid/widget/EditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "Please select proper to date"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttendanceFragment;->etNoOfdays:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
