.class public Lcom/conceptglobal/pmc/model/SegmentSorter;
.super Ljava/lang/Object;
.source "SegmentSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/conceptglobal/pmc/model/DashboardListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private segmentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SegmentSorter;->segmentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/model/DashboardListModel;Lcom/conceptglobal/pmc/model/DashboardListModel;)I
    .locals 3

    .line 20
    const-string v0, "Retailer"

    iget-object v1, p0, Lcom/conceptglobal/pmc/model/SegmentSorter;->segmentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getBalance_Points()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getBalance_Points()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getOutStandingValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getOutStandingValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    check-cast p2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/model/SegmentSorter;->compare(Lcom/conceptglobal/pmc/model/DashboardListModel;Lcom/conceptglobal/pmc/model/DashboardListModel;)I

    move-result p1

    return p1
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            "+TU;>;)",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            "+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
