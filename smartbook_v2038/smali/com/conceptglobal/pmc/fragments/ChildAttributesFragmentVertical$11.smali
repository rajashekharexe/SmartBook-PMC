.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$11;
.super Ljava/lang/Object;
.source "ChildAttributesFragmentVertical.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->findCurrentLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V
    .locals 0

    .line 1825
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$11;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$11;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
