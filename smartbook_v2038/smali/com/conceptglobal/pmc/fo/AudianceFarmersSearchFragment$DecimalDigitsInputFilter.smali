.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$DecimalDigitsInputFilter;
.super Ljava/lang/Object;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecimalDigitsInputFilter"
.end annotation


# instance fields
.field mPattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;II)V
    .locals 1

    .line 863
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$DecimalDigitsInputFilter;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[0-9]{0,"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "}+((\\.[0-9]{0,"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "})?)||(\\.)?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$DecimalDigitsInputFilter;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 869
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$DecimalDigitsInputFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 870
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    .line 871
    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
