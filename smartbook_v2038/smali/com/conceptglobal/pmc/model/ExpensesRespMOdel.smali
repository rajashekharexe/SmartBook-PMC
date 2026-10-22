.class public Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;
.super Ljava/lang/Object;
.source "ExpensesRespMOdel.java"


# instance fields
.field private ExpenseApprovalStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApprovlStatusExpensesModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->ExpenseApprovalStatus:Ljava/util/List;

    return-object v0
.end method

.method public setApprovlStatusExpensesModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->ExpenseApprovalStatus:Ljava/util/List;

    return-void
.end method
