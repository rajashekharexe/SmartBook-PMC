.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field public signalLevel:I

.field public singalStenths:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 1747
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, 0x0

    .line 1748
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;->singalStenths:I

    .line 1749
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;->signalLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;)V
    .locals 0

    .line 1747
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .line 1753
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 1754
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1755
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;->singalStenths:I

    .line 1756
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----- gsm strength"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1757
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;->singalStenths:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1758
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1700()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1759
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1700()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0903e4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1761
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;->singalStenths:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const v0, 0x7f0801f1

    .line 1762
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    if-ge v0, v1, :cond_1

    const v0, 0x7f0801f2

    .line 1767
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    if-ge v0, v2, :cond_2

    const v0, 0x7f0801f3

    .line 1771
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method
