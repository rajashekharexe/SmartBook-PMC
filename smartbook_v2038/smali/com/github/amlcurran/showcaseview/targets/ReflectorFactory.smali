.class Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory;
.super Ljava/lang/Object;
.source "ReflectorFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReflectorForActivity(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector;
    .locals 2

    .line 27
    sget-object v0, Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory$1;->$SwitchMap$com$github$amlcurran$showcaseview$targets$Reflector$ActionBarType:[I

    invoke-static {p0}, Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory;->searchForActivitySuperClass(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/AppCompatReflector;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/targets/AppCompatReflector;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 29
    :cond_2
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static searchForActivitySuperClass(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;
    .locals 2

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 40
    :goto_0
    const-class v0, Landroid/app/Activity;

    if-eq p0, v0, :cond_3

    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherlockActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherlockFragmentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionBarActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object p0, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->APP_COMPAT:Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    return-object p0

    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    sget-object p0, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->ACTIONBAR_SHERLOCK:Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    return-object p0

    .line 49
    :cond_3
    sget-object p0, Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;->STANDARD:Lcom/github/amlcurran/showcaseview/targets/Reflector$ActionBarType;

    return-object p0
.end method
