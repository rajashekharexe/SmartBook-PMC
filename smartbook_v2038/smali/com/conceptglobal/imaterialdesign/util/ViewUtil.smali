.class public Lcom/conceptglobal/imaterialdesign/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field public static final FRAME_DURATION:J = 0x10L

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 331
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/conceptglobal/imaterialdesign/R$attr;->tv_fontFamily:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 332
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/conceptglobal/imaterialdesign/util/TypefaceUtil;->load(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 336
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static applyStyle(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static applyStyle(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->View:[I

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x80000000

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    :goto_0
    if-ge v9, v5, :cond_30

    .line 95
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 96
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_background:I

    if-ne v7, v6, :cond_0

    .line 97
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 98
    invoke-static {v0, v6}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 100
    :cond_0
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_backgroundTint:I

    if-ne v7, v6, :cond_1

    .line 102
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 104
    :cond_1
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_backgroundTintMode:I

    const/4 v8, 0x3

    if-ne v7, v6, :cond_5

    .line 106
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eq v6, v8, :cond_4

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 124
    :pswitch_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 121
    :pswitch_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 118
    :pswitch_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 115
    :cond_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 112
    :cond_3
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 109
    :cond_4
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 129
    :cond_5
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_elevation:I

    if-ne v7, v6, :cond_6

    const/4 v6, 0x0

    .line 131
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    int-to-float v6, v7

    invoke-virtual {v0, v6}, Landroid/view/View;->setElevation(F)V

    goto :goto_2

    .line 133
    :cond_6
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_padding:I

    if-ne v7, v6, :cond_7

    const/4 v6, -0x1

    .line 134
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/4 v6, 0x0

    const/4 v11, 0x1

    :goto_1
    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_7
    const/4 v6, -0x1

    .line 138
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_paddingLeft:I

    if-ne v7, v8, :cond_8

    .line 139
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto/16 :goto_5

    .line 142
    :cond_8
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_paddingTop:I

    if-ne v7, v8, :cond_9

    .line 143
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 144
    :cond_9
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_paddingRight:I

    if-ne v7, v8, :cond_a

    .line 145
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    const/4 v6, 0x0

    goto :goto_1

    .line 148
    :cond_a
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_paddingBottom:I

    if-ne v7, v8, :cond_b

    .line 149
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    goto :goto_2

    .line 150
    :cond_b
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_paddingStart:I

    if-ne v7, v8, :cond_d

    const/high16 v8, -0x80000000

    .line 152
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    if-eq v14, v8, :cond_c

    const/4 v12, 0x1

    goto :goto_2

    :cond_c
    const/4 v12, 0x0

    goto :goto_2

    :cond_d
    const/high16 v8, -0x80000000

    .line 156
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_paddingEnd:I

    if-ne v7, v6, :cond_f

    .line 158
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    if-eq v6, v8, :cond_e

    const/4 v15, 0x1

    goto :goto_3

    :cond_e
    const/4 v15, 0x0

    :goto_3
    move/from16 v17, v6

    goto :goto_2

    .line 162
    :cond_f
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_fadeScrollbars:I

    if-ne v7, v6, :cond_10

    const/4 v6, 0x1

    .line 163
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_2

    .line 164
    :cond_10
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_fadingEdgeLength:I

    if-ne v7, v6, :cond_11

    const/4 v6, 0x0

    .line 165
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setFadingEdgeLength(I)V

    goto/16 :goto_5

    :cond_11
    const/4 v6, 0x0

    .line 166
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_minHeight:I

    if-ne v7, v8, :cond_12

    .line 167
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_5

    .line 168
    :cond_12
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_minWidth:I

    if-ne v7, v8, :cond_13

    .line 169
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumWidth(I)V

    goto/16 :goto_5

    .line 170
    :cond_13
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_requiresFadingEdge:I

    if-ne v7, v8, :cond_14

    const/4 v8, 0x1

    .line 171
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    goto/16 :goto_5

    .line 172
    :cond_14
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_scrollbarDefaultDelayBeforeFade:I

    if-ne v7, v8, :cond_15

    .line 174
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    goto/16 :goto_5

    .line 176
    :cond_15
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_scrollbarFadeDuration:I

    if-ne v7, v8, :cond_16

    .line 178
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    goto/16 :goto_5

    .line 180
    :cond_16
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_scrollbarSize:I

    if-ne v7, v8, :cond_17

    .line 182
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setScrollBarSize(I)V

    goto/16 :goto_5

    .line 184
    :cond_17
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_scrollbarStyle:I

    if-ne v7, v8, :cond_1c

    .line 185
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    if-eqz v7, :cond_1b

    const/high16 v6, 0x1000000

    if-eq v7, v6, :cond_1a

    const/high16 v6, 0x2000000

    if-eq v7, v6, :cond_19

    const/high16 v6, 0x3000000

    if-eq v7, v6, :cond_18

    goto/16 :goto_2

    .line 197
    :cond_18
    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_2

    .line 194
    :cond_19
    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_2

    .line 191
    :cond_1a
    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_2

    :cond_1b
    const/4 v6, 0x0

    .line 188
    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_2

    .line 201
    :cond_1c
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_soundEffectsEnabled:I

    if-ne v7, v6, :cond_1d

    const/4 v6, 0x1

    .line 202
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_2

    .line 203
    :cond_1d
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_textAlignment:I

    const/4 v8, 0x2

    if-ne v7, v6, :cond_1e

    const/4 v6, 0x0

    .line 205
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_3
    const/4 v6, 0x6

    .line 226
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_2

    :pswitch_4
    const/4 v6, 0x5

    .line 223
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v6, 0x4

    .line 220
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_2

    :pswitch_6
    const/4 v6, 0x3

    .line 217
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_2

    .line 214
    :pswitch_7
    invoke-virtual {v0, v8}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_2

    :pswitch_8
    const/4 v6, 0x1

    .line 211
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_2

    :pswitch_9
    const/4 v6, 0x0

    .line 208
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_5

    :cond_1e
    const/4 v8, 0x0

    .line 231
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_textDirection:I

    if-ne v7, v6, :cond_25

    .line 233
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    if-eqz v6, :cond_24

    const/4 v7, 0x1

    if-eq v6, v7, :cond_23

    const/4 v7, 0x2

    if-eq v6, v7, :cond_22

    const/4 v8, 0x3

    if-eq v6, v8, :cond_21

    const/4 v7, 0x4

    if-eq v6, v7, :cond_20

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1f

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 251
    :cond_1f
    invoke-virtual {v0, v8}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    .line 248
    :cond_20
    invoke-virtual {v0, v7}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    .line 245
    :cond_21
    invoke-virtual {v0, v8}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    .line 242
    :cond_22
    invoke-virtual {v0, v7}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    :cond_23
    const/4 v6, 0x1

    .line 239
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    :cond_24
    const/4 v8, 0x0

    .line 236
    invoke-virtual {v0, v8}, Landroid/view/View;->setTextDirection(I)V

    goto/16 :goto_2

    .line 256
    :cond_25
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_visibility:I

    if-ne v7, v6, :cond_29

    .line 257
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    if-eqz v6, :cond_28

    const/4 v7, 0x1

    if-eq v6, v7, :cond_27

    const/4 v7, 0x2

    if-eq v6, v7, :cond_26

    goto/16 :goto_2

    :cond_26
    const/16 v6, 0x8

    .line 266
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_27
    const/4 v6, 0x4

    .line 263
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 260
    :cond_28
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 270
    :cond_29
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_layoutDirection:I

    if-ne v7, v6, :cond_2e

    .line 272
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2c

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2b

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2a

    goto/16 :goto_2

    .line 284
    :cond_2a
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_2

    .line 281
    :cond_2b
    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_2

    .line 278
    :cond_2c
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_2

    :cond_2d
    const/4 v6, 0x0

    .line 275
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_5

    :cond_2e
    const/4 v6, 0x0

    .line 289
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->View_android_src:I

    if-ne v7, v8, :cond_2f

    .line 290
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_2f

    .line 291
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 292
    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2f
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_30
    if-ltz v10, :cond_31

    .line 298
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_e

    :cond_31
    if-nez v11, :cond_32

    if-eqz v13, :cond_37

    :cond_32
    if-eqz v11, :cond_33

    goto :goto_6

    .line 312
    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    :goto_6
    move/from16 v5, v16

    if-ltz v18, :cond_34

    move/from16 v6, v18

    goto :goto_7

    .line 313
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    :goto_7
    if-eqz v13, :cond_35

    goto :goto_8

    .line 314
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    :goto_8
    move/from16 v7, v19

    if-ltz v20, :cond_36

    move/from16 v8, v20

    goto :goto_9

    .line 315
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 312
    :goto_9
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_37
    if-nez v12, :cond_38

    if-eqz v15, :cond_3d

    :cond_38
    if-eqz v12, :cond_39

    goto :goto_a

    .line 318
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    :goto_a
    if-ltz v18, :cond_3a

    goto :goto_b

    .line 319
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    :goto_b
    move/from16 v5, v18

    if-eqz v15, :cond_3b

    goto :goto_c

    .line 320
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v17

    :goto_c
    move/from16 v6, v17

    if-ltz v20, :cond_3c

    goto :goto_d

    .line 321
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    :goto_d
    move/from16 v7, v20

    .line 318
    invoke-virtual {v0, v14, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 324
    :cond_3d
    :goto_e
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    .line 327
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    :cond_3e
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static applyStyle(Landroid/widget/AutoCompleteTextView;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 748
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 750
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_8

    .line 752
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 754
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_completionHint:I

    if-ne v1, v2, :cond_0

    .line 755
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 756
    :cond_0
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_completionThreshold:I

    if-ne v1, v2, :cond_1

    .line 757
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto :goto_1

    .line 758
    :cond_1
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_dropDownAnchor:I

    if-ne v1, v2, :cond_2

    .line 759
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    goto :goto_1

    .line 760
    :cond_2
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_dropDownHeight:I

    const/4 v3, -0x2

    if-ne v1, v2, :cond_3

    .line 761
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    goto :goto_1

    .line 762
    :cond_3
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_dropDownWidth:I

    if-ne v1, v2, :cond_4

    .line 763
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_1

    .line 764
    :cond_4
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_dropDownHorizontalOffset:I

    if-ne v1, v2, :cond_5

    .line 765
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    goto :goto_1

    .line 766
    :cond_5
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_dropDownVerticalOffset:I

    if-ne v1, v2, :cond_6

    .line 767
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    goto :goto_1

    .line 768
    :cond_6
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->AutoCompleteTextView_android_popupBackground:I

    if-ne v1, v2, :cond_7

    .line 769
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static applyStyle(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextViewAppearance:[I

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 471
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextViewAppearance_android_textAppearance:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 472
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_0

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eqz v5, :cond_13

    .line 478
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    :goto_1
    if-ge v10, v9, :cond_12

    .line 480
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 482
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColorHighlight:I

    if-ne v4, v8, :cond_1

    .line 483
    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto/16 :goto_2

    .line 485
    :cond_1
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColor:I

    if-ne v4, v8, :cond_2

    .line 486
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 488
    :cond_2
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColorHint:I

    if-ne v4, v8, :cond_3

    .line 489
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 491
    :cond_3
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColorLink:I

    if-ne v4, v8, :cond_4

    .line 492
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 494
    :cond_4
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textSize:I

    if-ne v4, v8, :cond_5

    .line 495
    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 497
    :cond_5
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_typeface:I

    if-ne v4, v8, :cond_6

    .line 498
    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto/16 :goto_2

    .line 500
    :cond_6
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_fontFamily:I

    if-ne v4, v8, :cond_7

    .line 501
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 503
    :cond_7
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_tv_fontFamily:I

    if-ne v4, v8, :cond_8

    .line 504
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 506
    :cond_8
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textStyle:I

    if-ne v4, v8, :cond_9

    .line 507
    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    goto :goto_2

    .line 509
    :cond_9
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textAllCaps:I

    if-ne v4, v8, :cond_a

    .line 511
    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2

    .line 513
    :cond_a
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowColor:I

    if-ne v4, v8, :cond_b

    .line 514
    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    goto :goto_2

    .line 516
    :cond_b
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowDx:I

    if-ne v4, v8, :cond_c

    const/4 v8, 0x0

    .line 517
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_2

    :cond_c
    const/4 v8, 0x0

    .line 519
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowDy:I

    if-ne v4, v7, :cond_d

    .line 520
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_2

    .line 522
    :cond_d
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowRadius:I

    if-ne v4, v7, :cond_e

    .line 523
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto :goto_2

    .line 525
    :cond_e
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_elegantTextHeight:I

    if-ne v4, v7, :cond_f

    .line 527
    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto :goto_2

    .line 529
    :cond_f
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_letterSpacing:I

    if-ne v4, v7, :cond_10

    .line 531
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_2

    .line 533
    :cond_10
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_fontFeatureSettings:I

    if-ne v4, v7, :cond_11

    .line 535
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_11
    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v7, -0x1

    goto/16 :goto_1

    .line 540
    :cond_12
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_13
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    .line 543
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView:[I

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 545
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move/from16 v7, v16

    move/from16 v8, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_4
    if-ge v9, v5, :cond_3d

    .line 547
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move/from16 v24, v5

    .line 549
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawableLeft:I

    if-ne v6, v5, :cond_14

    .line 550
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    :goto_5
    const/4 v1, 0x0

    const/4 v10, 0x1

    goto/16 :goto_9

    .line 553
    :cond_14
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawableTop:I

    if-ne v6, v5, :cond_15

    .line 554
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_5

    .line 557
    :cond_15
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawableRight:I

    if-ne v6, v5, :cond_16

    .line 558
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    goto :goto_5

    .line 561
    :cond_16
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawableBottom:I

    if-ne v6, v5, :cond_17

    .line 562
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    goto :goto_5

    .line 565
    :cond_17
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawableStart:I

    if-ne v6, v5, :cond_18

    .line 566
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :goto_6
    const/4 v1, 0x0

    const/16 v23, 0x1

    goto/16 :goto_9

    .line 569
    :cond_18
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawableEnd:I

    if-ne v6, v5, :cond_19

    .line 570
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto :goto_6

    .line 573
    :cond_19
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_drawablePadding:I

    if-ne v6, v5, :cond_1a

    const/4 v5, 0x0

    .line 574
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_7

    .line 576
    :cond_1a
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_maxLines:I

    if-ne v6, v5, :cond_1b

    const/4 v5, -0x1

    .line 577
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_7

    :cond_1b
    const/4 v5, -0x1

    .line 579
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_maxHeight:I

    if-ne v6, v1, :cond_1c

    .line 580
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_7

    .line 582
    :cond_1c
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_lines:I

    if-ne v6, v1, :cond_1d

    .line 583
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_7

    .line 585
    :cond_1d
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_height:I

    if-ne v6, v1, :cond_1e

    .line 586
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_7

    .line 588
    :cond_1e
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_minLines:I

    if-ne v6, v1, :cond_1f

    .line 589
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_7

    .line 591
    :cond_1f
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_minHeight:I

    if-ne v6, v1, :cond_20

    .line 592
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_7

    .line 594
    :cond_20
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_maxEms:I

    if-ne v6, v1, :cond_21

    .line 595
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_7

    .line 597
    :cond_21
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_maxWidth:I

    if-ne v6, v1, :cond_22

    .line 598
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_7

    .line 600
    :cond_22
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_ems:I

    if-ne v6, v1, :cond_23

    .line 601
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_7

    .line 603
    :cond_23
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_width:I

    if-ne v6, v1, :cond_24

    .line 604
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_7

    .line 606
    :cond_24
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_minEms:I

    if-ne v6, v1, :cond_25

    .line 607
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto :goto_7

    .line 609
    :cond_25
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_minWidth:I

    if-ne v6, v1, :cond_26

    .line 610
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_7

    .line 612
    :cond_26
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_gravity:I

    if-ne v6, v1, :cond_27

    .line 613
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_7

    .line 615
    :cond_27
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_scrollHorizontally:I

    if-ne v6, v1, :cond_28

    const/4 v1, 0x0

    .line 616
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_7

    .line 618
    :cond_28
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_includeFontPadding:I

    if-ne v6, v1, :cond_29

    const/4 v1, 0x1

    .line 619
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto :goto_7

    :cond_29
    const/4 v1, 0x1

    .line 621
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_cursorVisible:I

    if-ne v6, v5, :cond_2a

    .line 622
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_7

    .line 624
    :cond_2a
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textScaleX:I

    if-ne v6, v1, :cond_2b

    const/high16 v1, 0x3f800000    # 1.0f

    .line 625
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_7

    .line 627
    :cond_2b
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_shadowColor:I

    if-ne v6, v1, :cond_2c

    const/4 v1, 0x0

    .line 628
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v11, v5

    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 630
    :cond_2c
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_shadowDx:I

    if-ne v6, v1, :cond_2d

    const/4 v1, 0x0

    .line 631
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v12, v5

    goto/16 :goto_9

    :cond_2d
    const/4 v1, 0x0

    .line 633
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_shadowDy:I

    if-ne v6, v5, :cond_2e

    .line 634
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v13, v5

    goto/16 :goto_9

    .line 636
    :cond_2e
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_shadowRadius:I

    if-ne v6, v5, :cond_2f

    .line 637
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v14, v5

    goto/16 :goto_9

    .line 639
    :cond_2f
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textColorHighlight:I

    if-ne v6, v1, :cond_30

    const/4 v1, 0x0

    .line 640
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto :goto_7

    .line 642
    :cond_30
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textColor:I

    if-ne v6, v1, :cond_31

    .line 643
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 645
    :cond_31
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textColorHint:I

    if-ne v6, v1, :cond_32

    .line 646
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 648
    :cond_32
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textColorLink:I

    if-ne v6, v1, :cond_33

    .line 649
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 651
    :cond_33
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textSize:I

    if-ne v6, v1, :cond_34

    const/4 v1, 0x0

    .line 652
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    .line 654
    :cond_34
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_typeface:I

    if-ne v6, v1, :cond_35

    const/4 v1, -0x1

    .line 655
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v7, v5

    goto :goto_7

    :cond_35
    const/4 v1, -0x1

    .line 657
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textStyle:I

    if-ne v6, v5, :cond_36

    .line 658
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v8, v5

    goto :goto_7

    .line 660
    :cond_36
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_fontFamily:I

    if-ne v6, v5, :cond_37

    .line 661
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_8
    move-object v15, v5

    goto/16 :goto_7

    .line 663
    :cond_37
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_tv_fontFamily:I

    if-ne v6, v5, :cond_38

    .line 664
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 666
    :cond_38
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_textAllCaps:I

    if-ne v6, v5, :cond_39

    const/4 v5, 0x0

    .line 668
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_7

    :cond_39
    const/4 v5, 0x0

    .line 670
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_elegantTextHeight:I

    if-ne v6, v1, :cond_3a

    .line 672
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto/16 :goto_7

    .line 674
    :cond_3a
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_letterSpacing:I

    if-ne v6, v1, :cond_3b

    const/4 v1, 0x0

    .line 676
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_9

    :cond_3b
    const/4 v1, 0x0

    .line 678
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextView_android_fontFeatureSettings:I

    if-ne v6, v5, :cond_3c

    .line 680
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_3c
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v5, v24

    goto/16 :goto_4

    .line 684
    :cond_3d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v11, :cond_3e

    .line 687
    invoke-virtual {v0, v14, v12, v13, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3e
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eqz v10, :cond_45

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v16, :cond_3f

    const/4 v6, 0x0

    .line 692
    aput-object v16, v5, v6

    goto :goto_a

    :cond_3f
    const/4 v6, 0x0

    if-eqz v17, :cond_40

    .line 694
    aput-object v17, v5, v6

    :cond_40
    :goto_a
    if-eqz v19, :cond_41

    const/4 v6, 0x1

    .line 696
    aput-object v19, v5, v6

    :cond_41
    if-eqz v20, :cond_42

    .line 698
    aput-object v20, v5, v4

    goto :goto_b

    :cond_42
    if-eqz v21, :cond_43

    .line 700
    aput-object v21, v5, v4

    :cond_43
    :goto_b
    if-eqz v22, :cond_44

    .line 702
    aput-object v22, v5, v1

    :cond_44
    const/4 v6, 0x0

    .line 703
    aget-object v9, v5, v6

    const/4 v10, 0x1

    aget-object v11, v5, v10

    aget-object v10, v5, v4

    aget-object v5, v5, v1

    invoke-virtual {v0, v9, v11, v10, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_45
    const/4 v6, 0x0

    :goto_c
    if-eqz v23, :cond_48

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v16, :cond_46

    .line 709
    aput-object v16, v5, v6

    :cond_46
    if-eqz v20, :cond_47

    .line 711
    aput-object v20, v5, v4

    .line 712
    :cond_47
    aget-object v6, v5, v6

    const/4 v9, 0x1

    aget-object v10, v5, v9

    aget-object v9, v5, v4

    aget-object v5, v5, v1

    invoke-virtual {v0, v6, v10, v9, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_48
    if-eqz v15, :cond_4a

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v15, v8}, Lcom/conceptglobal/imaterialdesign/util/TypefaceUtil;->load(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 719
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_49
    move-object/from16 v18, v5

    goto :goto_d

    :cond_4a
    const/16 v18, 0x0

    :goto_d
    if-eqz v18, :cond_4e

    const/4 v5, 0x1

    if-eq v7, v5, :cond_4d

    if-eq v7, v4, :cond_4c

    if-eq v7, v1, :cond_4b

    :goto_e
    move-object/from16 v1, v18

    goto :goto_f

    .line 730
    :cond_4b
    sget-object v18, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_e

    .line 727
    :cond_4c
    sget-object v18, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_e

    .line 724
    :cond_4d
    sget-object v18, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_e

    .line 733
    :goto_f
    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 736
    :cond_4e
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_4f

    .line 737
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/widget/AutoCompleteTextView;Landroid/util/AttributeSet;II)V

    :cond_4f
    return-void
.end method

.method public static applyTextAppearance(Landroid/widget/TextView;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_13

    .line 354
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_0
    if-ge v7, v6, :cond_12

    .line 356
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    .line 358
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColorHighlight:I

    if-ne v15, v2, :cond_1

    .line 359
    invoke-virtual {v1, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto/16 :goto_1

    .line 361
    :cond_1
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColor:I

    if-ne v15, v2, :cond_2

    .line 362
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 364
    :cond_2
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColorHint:I

    if-ne v15, v2, :cond_3

    .line 365
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 367
    :cond_3
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textColorLink:I

    if-ne v15, v2, :cond_4

    .line 368
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 370
    :cond_4
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textSize:I

    if-ne v15, v2, :cond_5

    .line 371
    invoke-virtual {v1, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 373
    :cond_5
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_typeface:I

    if-ne v15, v2, :cond_6

    .line 374
    invoke-virtual {v1, v15, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    goto/16 :goto_1

    .line 376
    :cond_6
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_fontFamily:I

    if-ne v15, v2, :cond_7

    .line 377
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 379
    :cond_7
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_tv_fontFamily:I

    if-ne v15, v2, :cond_8

    .line 380
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 382
    :cond_8
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textStyle:I

    if-ne v15, v2, :cond_9

    .line 383
    invoke-virtual {v1, v15, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    goto :goto_1

    .line 385
    :cond_9
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_textAllCaps:I

    if-ne v15, v2, :cond_a

    .line 387
    invoke-virtual {v1, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_1

    .line 389
    :cond_a
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowColor:I

    if-ne v15, v2, :cond_b

    .line 390
    invoke-virtual {v1, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    goto :goto_1

    .line 392
    :cond_b
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowDx:I

    if-ne v15, v2, :cond_c

    .line 393
    invoke-virtual {v1, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_1

    .line 395
    :cond_c
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowDy:I

    if-ne v15, v2, :cond_d

    .line 396
    invoke-virtual {v1, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_1

    .line 398
    :cond_d
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_shadowRadius:I

    if-ne v15, v2, :cond_e

    .line 399
    invoke-virtual {v1, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_1

    .line 401
    :cond_e
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_elegantTextHeight:I

    if-ne v15, v2, :cond_f

    .line 403
    invoke-virtual {v1, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto :goto_1

    .line 405
    :cond_f
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_letterSpacing:I

    if-ne v15, v2, :cond_10

    .line 407
    invoke-virtual {v1, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_1

    .line 409
    :cond_10
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->TextAppearance_android_fontFeatureSettings:I

    if-ne v15, v2, :cond_11

    .line 411
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_11
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 416
    :cond_12
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v3, v9

    move v5, v10

    move v4, v13

    goto :goto_2

    :cond_13
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    :goto_2
    if-eqz v5, :cond_14

    .line 420
    invoke-virtual {v0, v4, v11, v12, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_14
    if-eqz v8, :cond_15

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v3}, Lcom/conceptglobal/imaterialdesign/util/TypefaceUtil;->load(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 426
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_3
    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    if-eq v14, v1, :cond_19

    const/4 v1, 0x2

    if-eq v14, v1, :cond_18

    const/4 v1, 0x3

    if-eq v14, v1, :cond_17

    goto :goto_4

    .line 437
    :cond_17
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 434
    :cond_18
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    .line 431
    :cond_19
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 440
    :goto_4
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1a
    return-void
.end method

.method public static generateViewId()I
    .locals 1

    .line 41
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static hasState([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
