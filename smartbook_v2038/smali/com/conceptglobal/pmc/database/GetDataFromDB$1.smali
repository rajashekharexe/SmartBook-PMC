.class Lcom/conceptglobal/pmc/database/GetDataFromDB$1;
.super Ljava/lang/Object;
.source "GetDataFromDB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/database/GetDataFromDB;)V
    .locals 0

    .line 3207
    iput-object p1, p0, Lcom/conceptglobal/pmc/database/GetDataFromDB$1;->this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3207
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB$1;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 3213
    aget-object p1, p1, v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
