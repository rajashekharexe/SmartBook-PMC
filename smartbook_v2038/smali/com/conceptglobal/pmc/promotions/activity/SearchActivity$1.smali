.class Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    .line 126
    const-string v0, "cityName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return v1
.end method

.method public onSuggestionSelect(I)Z
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    const-string v0, "Seleted Item"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method
