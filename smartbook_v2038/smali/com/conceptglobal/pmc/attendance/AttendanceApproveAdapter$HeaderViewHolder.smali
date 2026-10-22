.class public Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AttendanceApproveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;Landroid/view/View;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    .line 85
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090474

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$HeaderViewHolder;->tvTitle:Landroid/widget/TextView;

    return-void
.end method
