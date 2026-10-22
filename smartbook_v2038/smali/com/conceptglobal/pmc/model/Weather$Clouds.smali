.class public Lcom/conceptglobal/pmc/model/Weather$Clouds;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Clouds"
.end annotation


# instance fields
.field private perc:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/model/Weather;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$Clouds;->this$0:Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPerc()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Clouds;->perc:I

    return v0
.end method

.method public setPerc(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Clouds;->perc:I

    return-void
.end method
