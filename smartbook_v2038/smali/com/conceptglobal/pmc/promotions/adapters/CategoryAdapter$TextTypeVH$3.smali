.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$3;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 536
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
