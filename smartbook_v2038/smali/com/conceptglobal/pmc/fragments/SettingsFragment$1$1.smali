.class Lcom/conceptglobal/pmc/fragments/SettingsFragment$1$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1$1;->this$1:Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1$1;->this$1:Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1$1;->this$1:Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$000(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$300(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Z)V

    return-void
.end method
