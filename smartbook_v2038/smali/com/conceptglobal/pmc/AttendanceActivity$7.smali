.class Lcom/conceptglobal/pmc/AttendanceActivity$7;
.super Ljava/lang/Object;
.source "AttendanceActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/AttendanceActivity;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

.field final synthetic val$latitude:Landroid/widget/TextView;

.field final synthetic val$longitude:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/AttendanceActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1201
    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->val$latitude:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->val$longitude:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 3

    .line 1213
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1400(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1500(Lcom/conceptglobal/pmc/AttendanceActivity;Landroid/location/Location;Landroid/widget/TextView;)V

    .line 1214
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->val$latitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1600(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1700(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1800(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 1204
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->val$latitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->val$longitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1200(Lcom/conceptglobal/pmc/AttendanceActivity;)Lcom/conceptglobal/pmc/utils/Ibutton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/utils/Ibutton;->setVisibility(I)V

    .line 1207
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$1300(Lcom/conceptglobal/pmc/AttendanceActivity;)Lcom/conceptglobal/pmc/utils/Ibutton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/utils/Ibutton;->setVisibility(I)V

    .line 1208
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$7;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    const-string v0, "Location details saved."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
