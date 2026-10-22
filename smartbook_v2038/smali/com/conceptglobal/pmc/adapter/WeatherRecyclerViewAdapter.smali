.class public Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WeatherRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private weatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->weatherList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->weatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;I)V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->weatherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/Weather;

    .line 73
    iget-object v1, v0, Lcom/conceptglobal/pmc/model/Weather;->iconData:[B

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/conceptglobal/pmc/model/Weather;->iconData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 74
    iget-object v1, v0, Lcom/conceptglobal/pmc/model/Weather;->iconData:[B

    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->iconData:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$000(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://openweathermap.org/img/w/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$000(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 80
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM,dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v3, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getDateText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    .line 84
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$100(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p2

    const-string v1, "Today"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    :try_start_0
    iget-object p2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getDateText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 90
    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$100(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$100(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getDateText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$200(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getDescr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$300(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->getTemp()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$400(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Humidity :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getHumidity()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$500(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->getMinTemp()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\u2103/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->getMaxTemp()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->access$600(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Wind :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/conceptglobal/pmc/model/Weather;->wind:Lcom/conceptglobal/pmc/model/Weather$Wind;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/Weather$Wind;->getSpeed()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mps"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c016b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;-><init>(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
