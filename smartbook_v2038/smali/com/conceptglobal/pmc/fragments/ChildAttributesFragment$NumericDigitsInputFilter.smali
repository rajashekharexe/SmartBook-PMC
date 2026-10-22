.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$NumericDigitsInputFilter;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumericDigitsInputFilter"
.end annotation


# instance fields
.field mPattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)V
    .locals 1

    .line 2105
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$NumericDigitsInputFilter;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2106
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[0-9]{0,"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$NumericDigitsInputFilter;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 2113
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$NumericDigitsInputFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2114
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2115
    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
