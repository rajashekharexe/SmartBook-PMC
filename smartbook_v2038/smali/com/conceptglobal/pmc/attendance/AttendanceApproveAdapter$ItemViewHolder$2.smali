.class Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;
.super Ljava/lang/Object;
.source "AttendanceApproveAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;->this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;->val$this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;->this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;->access$000(Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter;)Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder$2;->this$1:Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/attendance/OnListItemClickListener;->onListitemClicked(I)V

    return-void
.end method
