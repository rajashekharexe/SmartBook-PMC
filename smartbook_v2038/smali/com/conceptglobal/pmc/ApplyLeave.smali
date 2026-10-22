.class public Lcom/conceptglobal/pmc/ApplyLeave;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ApplyLeave.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID1:I = 0x1


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private etDayType:Landroid/widget/EditText;

.field private etFromDate:Landroid/widget/EditText;

.field private etLeaveType:Landroid/widget/EditText;

.field private etNoOfdays:Landroid/widget/EditText;

.field private etRemarks:Landroid/widget/EditText;

.field private etSelected:Landroid/widget/EditText;

.field private etToDate:Landroid/widget/EditText;

.field private leaveBalance:Ljava/lang/String;

.field private llId:Landroid/widget/LinearLayout;

.field private llIdTl:Landroid/widget/LinearLayout;

.field private llPending:Landroid/widget/LinearLayout;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mFiledStr:Ljava/lang/String;

.field private mMonth:I

.field private mYear:I

.field selectedDatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private selectedToDate:Ljava/lang/String;

.field private slectedFromDate:Ljava/lang/String;

.field private strNoDays:Ljava/lang/String;

.field private tvDayTypeID:Landroid/widget/TextView;

.field private tvDays:Landroid/widget/TextView;

.field private tvLeave:Landroid/widget/TextView;

.field private tvLeaveType:Landroid/widget/TextView;

.field private tvNoOfDays:Landroid/widget/TextView;

.field private tvReason:Landroid/widget/TextView;

.field private tvRemarks:Landroid/widget/TextView;

.field private tvToDate:Landroid/widget/TextView;

.field private tvfromDate:Landroid/widget/TextView;

.field private txtLeaveCount:Landroid/widget/TextView;

.field private txtLeaveblns:Landroid/widget/TextView;

.field private txtLink:Landroid/widget/TextView;

.field private txtOffline:Landroid/widget/TextView;

.field private txtPending:Landroid/widget/TextView;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mFiledStr:Ljava/lang/String;

    .line 439
    new-instance v0, Lcom/conceptglobal/pmc/ApplyLeave$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ApplyLeave$3;-><init>(Lcom/conceptglobal/pmc/ApplyLeave;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 466
    new-instance v0, Lcom/conceptglobal/pmc/ApplyLeave$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ApplyLeave$4;-><init>(Lcom/conceptglobal/pmc/ApplyLeave;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDateSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->urlString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->urlString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->leaveBalance:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/ApplyLeave;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    return p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/ApplyLeave;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->leaveBalance:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/ApplyLeave;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    return p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/ApplyLeave;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/ApplyLeave;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    return p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/ApplyLeave;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    return p1
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->slectedFromDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/ApplyLeave;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->updateDisplay()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtLeaveCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtLeaveblns:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtPending:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etDayType:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->strNoDays:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->strNoDays:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    return-object p0
.end method

.method private initialization()V
    .locals 4

    const v0, 0x7f0904b4

    .line 185
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvLeaveType:Landroid/widget/TextView;

    const v0, 0x7f09048d

    .line 186
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvDays:Landroid/widget/TextView;

    const v0, 0x7f0905a8

    .line 187
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvfromDate:Landroid/widget/TextView;

    const v0, 0x7f0904c5

    .line 188
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvRemarks:Landroid/widget/TextView;

    const v0, 0x7f0904de

    .line 189
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvToDate:Landroid/widget/TextView;

    const v0, 0x7f0904bc

    .line 190
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvNoOfDays:Landroid/widget/TextView;

    const v0, 0x7f0905b5

    .line 191
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtLeaveCount:Landroid/widget/TextView;

    const v0, 0x7f0905b6

    .line 192
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtLeaveblns:Landroid/widget/TextView;

    const v0, 0x7f0905bb

    .line 193
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtPending:Landroid/widget/TextView;

    const v0, 0x7f0905ba

    .line 194
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtOffline:Landroid/widget/TextView;

    const v0, 0x7f090172

    .line 195
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    const v0, 0x7f090163

    .line 196
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etDayType:Landroid/widget/EditText;

    const v0, 0x7f0902a6

    .line 197
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llIdTl:Landroid/widget/LinearLayout;

    const v0, 0x7f0902a5

    .line 198
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llId:Landroid/widget/LinearLayout;

    const v0, 0x7f0902a9

    .line 199
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llPending:Landroid/widget/LinearLayout;

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/ApplyLeave$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/ApplyLeave$1;-><init>(Lcom/conceptglobal/pmc/ApplyLeave;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etDayType:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/ApplyLeave$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/ApplyLeave$2;-><init>(Lcom/conceptglobal/pmc/ApplyLeave;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etDayType:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016d

    .line 238
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    .line 239
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090180

    .line 240
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    .line 241
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090175

    .line 242
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    const v0, 0x7f09017a

    .line 245
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etRemarks:Landroid/widget/EditText;

    const v0, 0x7f0900af

    .line 246
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->btnSave:Landroid/widget/Button;

    const v0, 0x7f0905b7

    .line 247
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtLink:Landroid/widget/TextView;

    .line 248
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b5

    .line 251
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvLeave:Landroid/widget/TextView;

    const v0, 0x7f09048c

    .line 252
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvDayTypeID:Landroid/widget/TextView;

    const v0, 0x7f0904c4

    .line 253
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvReason:Landroid/widget/TextView;

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    const/4 v1, 0x2

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvLeaveType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvLeaveType:Landroid/widget/TextView;

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

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvDays:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvDays:Landroid/widget/TextView;

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

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvfromDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvfromDate:Landroid/widget/TextView;

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

    .line 263
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvRemarks:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvRemarks:Landroid/widget/TextView;

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

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvToDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvToDate:Landroid/widget/TextView;

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

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private insertData()V
    .locals 7

    const-string v0, "You have only "

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 359
    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->leaveBalance:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-lez v6, :cond_0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->leaveBalance:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " leaves "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    const-string v2, "Select Leave Type"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 367
    const-string v0, "Please Select Leave Type"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    const-string v1, "Select from date"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    const-string v1, "Select to date"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etRemarks:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etRemarks:Landroid/widget/EditText;

    const-string v2, "Enter remarks"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 380
    const-string v0, " Enter Remarks"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 384
    :cond_4
    new-instance v0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;-><init>()V

    .line 385
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setFromDate(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setToDate(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setLeaveType(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setNoOfDays(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etRemarks:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setRemarks(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etDayType:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setReasonType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :try_start_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->selectedDatesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->selectedDatesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 393
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->selectedDatesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_6

    .line 394
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->selectedDatesList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 395
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd-MM-yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setFromDate(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->setToDate(Ljava/lang/String;)V

    .line 399
    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLeaveData(Lcom/conceptglobal/pmc/model/ApplyLeaveModel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    :cond_5
    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLeaveData(Lcom/conceptglobal/pmc/model/ApplyLeaveModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    :catch_0
    :cond_6
    :try_start_2
    const-string v0, "Leave submitted successfully"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 411
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 412
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 413
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 416
    :cond_7
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/widget/LinearLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 556
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 562
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    .line 563
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 560
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-object p2
.end method

.method private setBottomViewPadding(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 555
    new-instance v0, Lcom/conceptglobal/pmc/ApplyLeave$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/ApplyLeave$$ExternalSyntheticLambda0;-><init>(Landroid/widget/LinearLayout;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 282
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 489
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mFiledStr:Ljava/lang/String;

    .line 490
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 493
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etSelected:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f1101b9

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 345
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    const-string v0, "from"

    const-string v1, "ApplyLeave"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v0, "activityName"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 348
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 321
    :sswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etSelected:Landroid/widget/EditText;

    .line 327
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->showDialog(I)V

    .line 328
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDateSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_1

    .line 322
    :cond_1
    :goto_0
    const-string p1, "Please select from date"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 291
    :sswitch_2
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 293
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "AttendanceType"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvLeave:Landroid/widget/TextView;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 295
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 296
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 297
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 315
    :sswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etSelected:Landroid/widget/EditText;

    const/4 p1, 0x0

    .line 317
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave;->showDialog(I)V

    .line 318
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_1

    .line 303
    :sswitch_4
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 305
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "DayType"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/conceptglobal/pmc/ApplyLeave;->tvDayTypeID:Landroid/widget/TextView;

    move-object v6, v0

    move-object v7, p0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 307
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 308
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 309
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 342
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->insertData()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900af -> :sswitch_5
        0x7f090163 -> :sswitch_4
        0x7f09016d -> :sswitch_3
        0x7f090172 -> :sswitch_2
        0x7f090180 -> :sswitch_1
        0x7f0905b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 84
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave;->setContentView(I)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "activityName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 86
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->initialization()V

    .line 87
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llIdTl:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave;->setBottomViewPadding(Landroid/widget/LinearLayout;)V

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 91
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtOffline:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtOffline:Landroid/widget/TextView;

    const-string v1, "You are in Offline"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llIdTl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llId:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llPending:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llIdTl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llId:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->llPending:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->txtOffline:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    new-instance p1, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;-><init>(Lcom/conceptglobal/pmc/ApplyLeave;)V

    .line 104
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->selectedDatesList:Ljava/util/List;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v1, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDateSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 427
    :cond_1
    new-instance v7, Landroid/app/DatePickerDialog;

    iget-object v9, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v10, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mYear:I

    iget v11, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mMonth:I

    iget v12, p0, Lcom/conceptglobal/pmc/ApplyLeave;->mDay:I

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ApplyLeave;->finish()V

    .line 181
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    .locals 5

    .line 505
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    .line 511
    div-long/2addr v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x0

    .line 512
    const-string v2, "Full Day"

    const-string v3, ""

    cmp-long v4, v0, p1

    if-gtz v4, :cond_0

    .line 513
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const-string p1, "Please select proper to date"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->strNoDays:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    long-to-double p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    .line 523
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etNoOfdays:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 529
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->strNoDays:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "Half Day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, p1, v0

    if-gtz v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave;->strNoDays:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_4

    .line 531
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/ApplyLeave;->etToDate:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDates(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave;->selectedDatesList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
