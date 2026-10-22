.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$4;
.super Ljava/lang/Object;
.source "PackageOfPracticeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$4;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
