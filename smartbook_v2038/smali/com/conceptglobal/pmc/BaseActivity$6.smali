.class Lcom/conceptglobal/pmc/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/BaseActivity;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/BaseActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/BaseActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$6;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 0

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
