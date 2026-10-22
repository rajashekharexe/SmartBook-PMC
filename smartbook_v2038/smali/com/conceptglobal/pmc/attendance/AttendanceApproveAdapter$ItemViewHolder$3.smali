.class Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;
.super Ljava/lang/Object;
.source "AttendanceApproveAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;-><init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;->this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;->val$this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 118
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;->this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->access$100(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$3;->this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/attendance/ContentItem;

    .line 119
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/ContentItem;->getAttendanceItem()Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
