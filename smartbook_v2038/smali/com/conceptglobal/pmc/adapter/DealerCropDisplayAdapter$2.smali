.class Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$2;
.super Ljava/lang/Object;
.source "DealerCropDisplayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
