.class public Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final mTriangleVerticesData:[F


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private rotationAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 36
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVerticesData:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 64
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mMVPMatrix:[F

    .line 65
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mSTMatrix:[F

    const/16 v0, -0x3039

    .line 67
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTextureID:I

    .line 75
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->rotationAngle:I

    .line 76
    sget-object p1, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVerticesData:[F

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 77
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 184
    invoke-direct {p0, v1, p2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 188
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 189
    const-string v2, "glCreateProgram"

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    if-nez v1, :cond_2

    return v0

    .line 193
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 194
    const-string p1, "glAttachShader"

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 195
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 197
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    .line 198
    new-array p2, p1, [I

    const v2, 0x8b82

    .line 199
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 200
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    .line 201
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 166
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCreateShader type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 168
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 169
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 170
    new-array p1, p1, [I

    const p2, 0x8b81

    const/4 v1, 0x0

    .line 171
    invoke-static {v0, p2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 172
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 173
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 159
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    if-eqz p1, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failed creating program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 209
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": glError "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 8

    .line 86
    const-string v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 p1, 0x5

    if-eqz p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mSTMatrix:[F

    aget v0, p2, p1

    neg-float v0, v0

    aput v0, p2, p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xd

    .line 91
    aget v2, p2, v1

    sub-float/2addr v0, v2

    aput v0, p2, v1

    .line 94
    :cond_0
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    const-string p2, "glUseProgram"

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 96
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 97
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTextureID:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maPositionHandle:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 100
    const-string p2, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 102
    const-string p2, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maTextureHandle:I

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 105
    const-string p2, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 106
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maTextureHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 107
    const-string p2, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 108
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mSTMatrix:[F

    const/4 v2, 0x1

    invoke-static {p2, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 109
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {p2, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p2, 0x4

    .line 110
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 111
    const-string p1, "glDrawArrays"

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 7

    .line 116
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    if-eqz v0, :cond_5

    .line 120
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maPositionHandle:I

    .line 121
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maPositionHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 125
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maTextureHandle:I

    .line 126
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->maTextureHandle:I

    if-eq v0, v1, :cond_3

    .line 130
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->muMVPMatrixHandle:I

    .line 131
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->muMVPMatrixHandle:I

    if-eq v0, v1, :cond_2

    .line 135
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->muSTMatrixHandle:I

    .line 136
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->muSTMatrixHandle:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 140
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 141
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 142
    aget v0, v1, v2

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mTextureID:I

    const v1, 0x8d65

    .line 143
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 144
    const-string v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    .line 145
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 146
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 147
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 148
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 149
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 152
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->rotationAngle:I

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/video/TextureRenderer;->mMVPMatrix:[F

    int-to-float v3, v0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
