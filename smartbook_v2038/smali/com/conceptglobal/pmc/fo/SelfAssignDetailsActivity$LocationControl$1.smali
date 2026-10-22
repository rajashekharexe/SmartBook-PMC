.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl$1;
.super Ljava/lang/Object;
.source "SelfAssignDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 964
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 965
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1002(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Z)Z

    return-void
.end method
