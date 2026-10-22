.class public final Lde/keyboardsurfer/android/widget/crouton/Crouton;
.super Ljava/lang/Object;
.source "Crouton.java"


# static fields
.field private static final IMAGE_ID:I = 0x100

.field private static final NULL_PARAMETERS_ARE_NOT_ACCEPTED:Ljava/lang/String; = "Null parameters are not accepted"

.field private static final TEXT_ID:I = 0x101


# instance fields
.field private activity:Landroid/app/Activity;

.field private configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

.field private croutonView:Landroid/widget/FrameLayout;

.field private final customView:Landroid/view/View;

.field private inAnimation:Landroid/view/animation/Animation;

.field private lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private outAnimation:Landroid/view/animation/Animation;

.field private final style:Lde/keyboardsurfer/android/widget/crouton/Style;

.field private final text:Ljava/lang/CharSequence;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 70
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 133
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    .line 134
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    .line 135
    iput-object p2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    .line 136
    new-instance p1, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    invoke-direct {p1}, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;-><init>()V

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->build()Lde/keyboardsurfer/android/widget/crouton/Style;

    move-result-object p1

    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 137
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null parameters are not accepted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 151
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->DEFAULT:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    invoke-direct {p0, p1, p2, p3, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;Lde/keyboardsurfer/android/widget/crouton/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;Lde/keyboardsurfer/android/widget/crouton/Configuration;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 70
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 172
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    .line 173
    iput-object p2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    .line 174
    iput-object p3, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    .line 175
    new-instance p1, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;

    invoke-direct {p1}, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;-><init>()V

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->build()Lde/keyboardsurfer/android/widget/crouton/Style;

    move-result-object p1

    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 176
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    .line 177
    iput-object p4, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    return-void

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null parameters are not accepted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 70
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 88
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    .line 89
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    .line 90
    iput-object p2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    .line 91
    iput-object p3, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 92
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null parameters are not accepted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 70
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 112
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    .line 113
    iput-object p2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    .line 114
    iput-object p3, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 115
    iput-object p4, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    .line 116
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null parameters are not accepted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static cancelAllCroutons()V
    .locals 1

    .line 546
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Manager;->getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->clearCroutonQueue()V

    return-void
.end method

.method public static clearCroutonsForActivity(Landroid/app/Activity;)V
    .locals 1

    .line 557
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Manager;->getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->clearCroutonsForActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static getLicenseText()Ljava/lang/String;
    .locals 1

    .line 667
    const-string v0, "This application uses the Crouton library.\n\nCopyright 2012 - 2013 Benjamin Weiss \n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n   http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License."

    return-object v0
.end method

.method public static hide(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 0

    .line 538
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->hide()V

    return-void
.end method

.method private initializeContentView(Landroid/content/res/Resources;)Landroid/widget/RelativeLayout;
    .locals 5

    .line 855
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 856
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->paddingInPixels:I

    .line 864
    iget-object v3, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v3, v3, Lde/keyboardsurfer/android/widget/crouton/Style;->paddingDimensionResId:I

    if-lez v3, :cond_0

    .line 865
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->paddingDimensionResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 867
    :cond_0
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 871
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageResId:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 872
    :cond_2
    :goto_0
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->initializeImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 873
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    :goto_1
    invoke-direct {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->initializeTextView(Landroid/content/res/Resources;)Landroid/widget/TextView;

    move-result-object p1

    .line 878
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 881
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 884
    :cond_3
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->gravity:I

    and-int/lit8 v1, v1, 0x11

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    .line 885
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 886
    :cond_4
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->gravity:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    .line 887
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 888
    :cond_5
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->gravity:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/16 v1, 0xe

    .line 889
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 892
    :cond_6
    :goto_2
    invoke-virtual {v0, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initializeCroutonView()V
    .locals 2

    .line 801
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 803
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->initializeCroutonViewGroup(Landroid/content/res/Resources;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->croutonView:Landroid/widget/FrameLayout;

    .line 806
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->initializeContentView(Landroid/content/res/Resources;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->croutonView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initializeCroutonViewGroup(Landroid/content/res/Resources;)Landroid/widget/FrameLayout;
    .locals 5

    .line 811
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 813
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    :cond_0
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->heightDimensionResId:I

    if-lez v1, :cond_1

    .line 819
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->heightDimensionResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 821
    :cond_1
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->heightInPixels:I

    .line 825
    :goto_0
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v2, v2, Lde/keyboardsurfer/android/widget/crouton/Style;->widthDimensionResId:I

    if-lez v2, :cond_2

    .line 826
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v2, v2, Lde/keyboardsurfer/android/widget/crouton/Style;->widthDimensionResId:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 828
    :cond_2
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v2, v2, Lde/keyboardsurfer/android/widget/crouton/Style;->widthInPixels:I

    .line 831
    :goto_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundColorValue:I

    if-eq v1, v4, :cond_4

    .line 836
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundColorValue:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 838
    :cond_4
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundColorResourceId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 843
    :goto_3
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundDrawableResourceId:I

    if-eqz v1, :cond_6

    .line 844
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->backgroundDrawableResourceId:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 845
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 846
    iget-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-boolean p1, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->isTileEnabled:Z

    if-eqz p1, :cond_5

    .line 847
    sget-object p1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 849
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-object v0
.end method

.method private initializeImageView()Landroid/widget/ImageView;
    .locals 4

    .line 954
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x100

    .line 955
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    const/4 v1, 0x1

    .line 956
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 957
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 960
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 966
    :cond_0
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageResId:I

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->imageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 970
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    const/4 v3, -0x1

    .line 973
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    .line 974
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 976
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initializeTextView(Landroid/content/res/Resources;)Landroid/widget/TextView;
    .locals 3

    .line 897
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x101

    .line 898
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 899
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->fontName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->fontName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->setTextWithCustomFont(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_0
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->fontNameResId:I

    if-eqz v1, :cond_1

    .line 902
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->fontNameResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->setTextWithCustomFont(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_1
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :goto_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 907
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 910
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textColorValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 911
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textColorValue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 912
    :cond_2
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textColorResourceId:I

    if-eqz v1, :cond_3

    .line 913
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textColorResourceId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    :cond_3
    :goto_1
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textSize:I

    if-eqz v1, :cond_4

    .line 920
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textSize:I

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 924
    :cond_4
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowColorResId:I

    if-eqz v1, :cond_5

    .line 925
    invoke-direct {p0, p1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->initializeTextViewShadow(Landroid/content/res/Resources;Landroid/widget/TextView;)V

    .line 929
    :cond_5
    iget-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget p1, p1, Lde/keyboardsurfer/android/widget/crouton/Style;->textAppearanceResId:I

    if-eqz p1, :cond_6

    .line 930
    iget-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textAppearanceResId:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_6
    return-object v0
.end method

.method private initializeTextViewShadow(Landroid/content/res/Resources;Landroid/widget/TextView;)V
    .locals 3

    .line 945
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v0, v0, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowColorResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 946
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v0, v0, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowRadius:F

    .line 947
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowDx:F

    .line 948
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget v2, v2, Lde/keyboardsurfer/android/widget/crouton/Style;->textShadowDy:F

    .line 949
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method private isCroutonViewNotNull()Z
    .locals 1

    .line 697
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->croutonView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCustomViewNotNull()Z
    .locals 1

    .line 701
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static make(Landroid/app/Activity;Landroid/view/View;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 308
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-direct {v0, p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method

.method public static make(Landroid/app/Activity;Landroid/view/View;I)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 342
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static make(Landroid/app/Activity;Landroid/view/View;ILde/keyboardsurfer/android/widget/crouton/Configuration;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 362
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;Lde/keyboardsurfer/android/widget/crouton/Configuration;)V

    return-object v0
.end method

.method public static make(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 325
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-direct {v0, p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;I)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 195
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-direct {v0, p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;I)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 233
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 1

    .line 214
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private measureCroutonView()V
    .locals 3

    .line 788
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 793
    :cond_0
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 797
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private setTextWithCustomFont(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .line 936
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 937
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 938
    new-instance v1, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 940
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 448
    invoke-static {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->make(Landroid/app/Activity;Landroid/view/View;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 478
    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->make(Landroid/app/Activity;Landroid/view/View;I)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 463
    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->make(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public static showText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;)V
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    return-void
.end method

.method public static showText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;I)V
    .locals 0

    .line 528
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;I)V

    return-void
.end method

.method public static showText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)V
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V
    .locals 0

    .line 378
    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public static showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;I)V
    .locals 0

    .line 412
    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public static showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;ILde/keyboardsurfer/android/widget/crouton/Configuration;)V
    .locals 0

    .line 432
    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0, p4}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->setConfiguration(Lde/keyboardsurfer/android/widget/crouton/Configuration;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method public static showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)V
    .locals 0

    .line 395
    invoke-static {p0, p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 564
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Manager;->getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;

    move-result-object v0

    .line 565
    invoke-virtual {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonImmediately(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    return-void
.end method

.method detachActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    return-void
.end method

.method detachLifecycleCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    return-void
.end method

.method detachViewGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 715
    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 753
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;
    .locals 1

    .line 743
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    if-nez v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getStyle()Lde/keyboardsurfer/android/widget/crouton/Style;

    move-result-object v0

    iget-object v0, v0, Lde/keyboardsurfer/android/widget/crouton/Style;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 746
    :cond_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    return-object v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 577
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->inAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v0

    iget v0, v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->inAnimationResId:I

    if-lez v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v1

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Configuration;->inAnimationResId:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->inAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 581
    :cond_0
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->measureCroutonView()V

    .line 582
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->buildDefaultSlideInDownAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->inAnimation:Landroid/view/animation/Animation;

    .line 586
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;
    .locals 1

    .line 729
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 590
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->outAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v0

    iget v0, v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->outAnimationResId:I

    if-lez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v1

    iget v1, v1, Lde/keyboardsurfer/android/widget/crouton/Configuration;->outAnimationResId:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->outAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->buildDefaultSlideOutUpAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->outAnimation:Landroid/view/animation/Animation;

    .line 598
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getStyle()Lde/keyboardsurfer/android/widget/crouton/Style;
    .locals 1

    .line 736
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    return-object v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .line 767
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 775
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 780
    :cond_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->croutonView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 781
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->initializeCroutonView()V

    .line 784
    :cond_1
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->croutonView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 760
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 615
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Manager;->getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    return-void
.end method

.method isShowing()Z
    .locals 1

    .line 693
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isCroutonViewNotNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isCustomViewNotNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConfiguration(Lde/keyboardsurfer/android/widget/crouton/Configuration;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 0

    .line 640
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    return-object p0
.end method

.method public setLifecycleCallback(Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lde/keyboardsurfer/android/widget/crouton/Crouton;
    .locals 0

    .line 627
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 573
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Manager;->getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->add(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crouton{text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->style:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", croutonView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->croutonView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lifecycleCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Crouton;->lifecycleCallback:Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
