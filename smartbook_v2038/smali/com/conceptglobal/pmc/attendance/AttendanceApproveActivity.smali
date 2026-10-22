.class public Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "AttendanceApproveActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final Tag:Ljava/lang/String; = "AttendanceApproveActivity"


# instance fields
.field private approveListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/attendance/ApproveListItem;",
            ">;"
        }
    .end annotation
.end field

.field private approveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/attendance/AttendanceItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private attendanceApproveAdapter:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

.field private btnApprove:Landroid/widget/Button;

.field private btnApproveAndSave:Landroid/widget/Button;

.field private btnCancel:Landroid/widget/Button;

.field private btnReject:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private etDistance:Landroid/widget/EditText;

.field private etFONoghtHalt:Landroid/widget/EditText;

.field private etFoDistance:Landroid/widget/EditText;

.field private etNightHalt:Landroid/widget/EditText;

.field private rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

.field private tvFoNightHaltId:Landroid/widget/TextView;

.field private tvNightHaltID:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->tvNightHaltID:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etDistance:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFONoghtHalt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etNightHalt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->loadData(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->setAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->sendDataToServer()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f09039a

    .line 120
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090093

    .line 121
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->btnApprove:Landroid/widget/Button;

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ad

    .line 123
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->btnReject:Landroid/widget/Button;

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadData(Z)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getApprovedListQry()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getApprovalsList(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveMap:Ljava/util/HashMap;

    .line 83
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->prepareGroupData()V

    return-void
.end method

.method private prepareGroupData()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    new-instance v2, Lcom/conceptglobal/pmc/attendance/HeaderItem;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/attendance/HeaderItem;-><init>()V

    .line 100
    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/attendance/HeaderItem;->setHeader(Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    .line 103
    new-instance v3, Lcom/conceptglobal/pmc/attendance/ContentItem;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/attendance/ContentItem;-><init>()V

    .line 104
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/attendance/ContentItem;->setAttendanceItem(Lcom/conceptglobal/pmc/attendance/AttendanceItem;)V

    .line 105
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendDataToServer()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service initiated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 228
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->attendanceApproveAdapter:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/conceptglobal/pmc/attendance/OnListItemClickListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->attendanceApproveAdapter:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    .line 113
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private showAttendanceDialog(Lcom/conceptglobal/pmc/attendance/AttendanceItem;)V
    .locals 5

    .line 134
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0054

    .line 136
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f09016a

    .line 137
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFoDistance:Landroid/widget/EditText;

    const v2, 0x7f090184

    .line 138
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etDistance:Landroid/widget/EditText;

    const v2, 0x7f09016c

    .line 139
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFONoghtHalt:Landroid/widget/EditText;

    const v2, 0x7f090174

    .line 140
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etNightHalt:Landroid/widget/EditText;

    const v2, 0x7f0904ba

    .line 141
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->tvNightHaltID:Landroid/widget/TextView;

    const v2, 0x7f0904ad

    .line 142
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->tvFoNightHaltId:Landroid/widget/TextView;

    const v2, 0x7f0900b0

    .line 143
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->btnApproveAndSave:Landroid/widget/Button;

    const v2, 0x7f090095

    .line 144
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->btnCancel:Landroid/widget/Button;

    .line 146
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFoDistance:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getDistance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFoDistance:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 148
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getNighthalt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getNighthalt()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFONoghtHalt:Landroid/widget/EditText;

    const-string v4, "Yes"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFONoghtHalt:Landroid/widget/EditText;

    const-string v4, "No"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etFONoghtHalt:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->etNightHalt:Landroid/widget/EditText;

    new-instance v4, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$1;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$1;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->btnApproveAndSave:Landroid/widget/Button;

    new-instance v4, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;Lcom/conceptglobal/pmc/attendance/AttendanceItem;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->btnCancel:Landroid/widget/Button;

    new-instance v2, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$3;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 221
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private updateStaus(I)V
    .locals 9

    .line 247
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/attendance/ApproveListItem;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/attendance/ApproveListItem;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 251
    iget-object v4, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/attendance/ContentItem;

    .line 252
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/attendance/ContentItem;->getAttendanceItem()Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->isChecked()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_0

    .line 255
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 256
    const-string v5, "IsApproved"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v5, "SVUserId"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v5, "serverUpdatedStatus"

    const-string v6, "false"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v5, "SVApprovedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v5, "PdaId"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v5, "UpdatedBy"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v5, "UpdatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 264
    const-string v6, "PMCAttendanceDetails"

    const-string v7, "TransId = ?"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getTransID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v2, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 265
    const-string v4, "AttendanceApproveActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 271
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    if-eqz v2, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->sendDataToServer()V

    .line 275
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->loadData(Z)V

    .line 276
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->setAdapter()V

    goto :goto_3

    .line 278
    :cond_2
    const-string p1, "Please select atleast one record"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090093

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0900ad

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x2

    .line 293
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->updateStaus(I)V

    goto :goto_0

    .line 295
    :cond_1
    const-string p1, "No data to Reject"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 287
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->updateStaus(I)V

    goto :goto_0

    .line 289
    :cond_3
    const-string p1, "No data to Approve"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 69
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->setContentView(I)V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Attendance Approval("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 71
    iput-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->context:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->init()V

    const/4 p1, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->loadData(Z)V

    .line 74
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 77
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->setAdapter()V

    return-void
.end method

.method public onListitemClicked(I)V
    .locals 1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/attendance/ContentItem;

    .line 238
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/ContentItem;->getAttendanceItem()Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    move-result-object p1

    .line 239
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->showAttendanceDialog(Lcom/conceptglobal/pmc/attendance/AttendanceItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
