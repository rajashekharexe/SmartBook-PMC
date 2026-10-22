.class Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$3;
.super Ljava/lang/Object;
.source "FarmerLandsListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
