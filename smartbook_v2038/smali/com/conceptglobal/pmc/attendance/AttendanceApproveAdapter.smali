.class public Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AttendanceApproveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;,
        Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;
    }
.end annotation


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

.field private isHeaderName:Z

.field private onListItemClickListener:Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/conceptglobal/pmc/attendance/OnListItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/attendance/ApproveListItem;",
            ">;Z",
            "Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->approveListItems:Ljava/util/ArrayList;

    .line 27
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->isHeaderName:Z

    .line 28
    iput-object p4, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->onListItemClickListener:Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->onListItemClickListener:Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->approveListItems:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/attendance/ApproveListItem;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/ApproveListItem;->getType()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 45
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/attendance/HeaderItem;

    .line 48
    check-cast p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;

    .line 49
    iget-object p1, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/HeaderItem;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->approveListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/attendance/ContentItem;

    .line 52
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/ContentItem;->getAttendanceItem()Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    move-result-object p2

    .line 53
    check-cast p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    .line 54
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->isHeaderName:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvdate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvdate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    iget-object v0, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvdistance:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getNighthalt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvNightHalt:Landroid/widget/TextView;

    const-string v1, "Yes"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvNightHalt:Landroid/widget/TextView;

    const-string v1, "No"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_1
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 64
    iget-object p1, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->cbArroveAttendance:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 66
    :cond_3
    iget-object p1, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->cbArroveAttendance:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0061

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;Landroid/view/View;)V

    return-object p2

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0062

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;Landroid/view/View;)V

    return-object p2
.end method
