.class public Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AttendanceApproveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field cbArroveAttendance:Landroid/widget/CheckBox;

.field ivEditAttendance:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

.field public tvNightHalt:Landroid/widget/TextView;

.field public tvdate:Landroid/widget/TextView;

.field public tvdistance:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;Landroid/view/View;)V
    .locals 1

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    .line 96
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090472

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvdate:Landroid/widget/TextView;

    const v0, 0x7f090473

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvdistance:Landroid/widget/TextView;

    const v0, 0x7f090475

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->tvNightHalt:Landroid/widget/TextView;

    const v0, 0x7f0900e4

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->cbArroveAttendance:Landroid/widget/CheckBox;

    const v0, 0x7f09025b

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->ivEditAttendance:Landroid/widget/ImageView;

    .line 102
    new-instance v0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$1;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->ivEditAttendance:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->cbArroveAttendance:Landroid/widget/CheckBox;

    new-instance v0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
