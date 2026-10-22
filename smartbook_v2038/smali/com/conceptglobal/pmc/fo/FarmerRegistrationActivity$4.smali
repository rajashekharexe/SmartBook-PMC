.class Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$4;
.super Ljava/lang/Object;
.source "FarmerRegistrationActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$400(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    return-void
.end method
