.class Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$1;
.super Ljava/lang/Object;
.source "CropDisplayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
