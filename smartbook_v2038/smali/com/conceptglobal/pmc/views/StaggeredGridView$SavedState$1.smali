.class Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;
    .locals 2

    .line 2140
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcel;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2138
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;
    .locals 0

    .line 2144
    new-array p1, p1, [Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2138
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState$1;->newArray(I)[Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;

    move-result-object p1

    return-object p1
.end method
