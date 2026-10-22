.class Lcom/conceptglobal/pmc/MainHomePageActivity$21;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showAlertForTracker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$21;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1166
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$21;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1200(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    .line 1167
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
