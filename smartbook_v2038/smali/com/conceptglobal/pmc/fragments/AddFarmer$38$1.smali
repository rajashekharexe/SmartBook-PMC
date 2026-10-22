.class Lcom/conceptglobal/pmc/fragments/AddFarmer$38$1;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;)V
    .locals 0

    .line 5313
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 0

    .line 5316
    const-string p1, "AddFarmer"

    const-string p2, "onValueChange: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
