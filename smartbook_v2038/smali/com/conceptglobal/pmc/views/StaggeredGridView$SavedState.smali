.class Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstId:J

.field mapping:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field topOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2138
    new-instance v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState$1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2114
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-wide/16 v0, -0x1

    .line 2104
    iput-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    .line 2115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    .line 2116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->position:I

    .line 2117
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->topOffsets:[I

    .line 2118
    sget-object v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$ColMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 2103
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    .line 2110
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const-wide/16 v0, -0x1

    .line 2104
    iput-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StaggereGridView.SavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2133
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 2123
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2124
    iget-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2125
    iget p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    iget-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->topOffsets:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2127
    iget-object p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
