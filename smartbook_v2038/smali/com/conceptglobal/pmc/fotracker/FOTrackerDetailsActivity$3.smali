.class Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$3;
.super Ljava/lang/Object;
.source "FOTrackerDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->showNoInternetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
