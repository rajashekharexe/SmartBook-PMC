.class Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$3;
.super Ljava/lang/Object;
.source "SelfAssignDraftAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 302
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
