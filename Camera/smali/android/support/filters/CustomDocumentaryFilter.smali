.class public Landroid/support/filters/CustomDocumentaryFilter;
.super Landroid/filterfw/core/Filter;
.source "CustomDocumentaryFilter.java"


# instance fields
.field private final mDocumentaryShader:Ljava/lang/String;

.field private mHeight:I

.field private mNoiseFrame:Landroid/filterfw/core/Frame;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x280

    iput v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mTileSize:I

    .line 40
    iput v1, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    .line 41
    iput v1, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    .line 42
    iput v1, p0, Landroid/support/filters/CustomDocumentaryFilter;->mTarget:I

    .line 48
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 center;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = texture2D(tex_sampler_1, v_texcoord).r;\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  const float rate = 4.0;\n  float dist_rate = ((center.x - gl_FragCoord.x)/rate) * ((center.x - gl_FragCoord.x)/rate)   +  ((center.y - gl_FragCoord.y)/rate) * ((center.y - gl_FragCoord.y)/rate) ;\n  float dist = sqrt(dist_rate)*rate;\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    iput-object v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mDocumentaryShader:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mRandom:Ljava/util/Random;

    .line 79
    return-void
.end method

.method private initParameters()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3fe0

    .line 167
    iget-object v4, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    .line 168
    iget v4, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 169
    .local v1, centerX:F
    iget v4, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 170
    .local v2, centerY:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    const/4 v4, 0x0

    aput v1, v0, v4

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 171
    .local v0, center:[F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 173
    .local v3, max_dist:F
    iget-object v4, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "center"

    invoke-virtual {v4, v5, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget-object v4, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "inv_max_dist"

    const/high16 v6, 0x3f80

    div-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget-object v4, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "stepsize"

    const v6, 0x3b808081

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .end local v0           #center:[F
    .end local v1           #centerX:F
    .end local v2           #centerY:F
    .end local v3           #max_dist:F
    :cond_0
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 89
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 101
    packed-switch p2, :pswitch_data_0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 center;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = texture2D(tex_sampler_1, v_texcoord).r;\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  const float rate = 4.0;\n  float dist_rate = ((center.x - gl_FragCoord.x)/rate) * ((center.x - gl_FragCoord.x)/rate)   +  ((center.y - gl_FragCoord.y)/rate) * ((center.y - gl_FragCoord.y)/rate) ;\n  float dist = sqrt(dist_rate)*rate;\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 104
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/support/filters/CustomDocumentaryFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 105
    iput-object v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 112
    iput p2, p0, Landroid/support/filters/CustomDocumentaryFilter;->mTarget:I

    .line 113
    return-void

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x3

    .line 118
    const-string v7, "image"

    invoke-virtual {p0, v7}, Landroid/support/filters/CustomDocumentaryFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 119
    .local v3, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    .line 122
    .local v4, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mTarget:I

    if-eq v7, v8, :cond_1

    .line 123
    :cond_0
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroid/support/filters/CustomDocumentaryFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 127
    :cond_1
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    if-eq v7, v8, :cond_4

    .line 128
    :cond_2
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iput v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    .line 129
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iput v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    .line 131
    iget v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    mul-int/2addr v7, v8

    new-array v0, v7, [I

    .line 132
    .local v0, buffer:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    mul-int/2addr v7, v8

    if-lt v2, v7, :cond_6

    .line 135
    iget v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    invoke-static {v7, v8, v9, v9}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 138
    .local v1, format:Landroid/filterfw/core/FrameFormat;
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_3

    .line 139
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 141
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    iput-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    .line 142
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 144
    invoke-direct {p0}, Landroid/support/filters/CustomDocumentaryFilter;->initParameters()V

    .line 147
    .end local v0           #buffer:[I
    .end local v1           #format:Landroid/filterfw/core/FrameFormat;
    .end local v2           #i:I
    :cond_4
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mWidth:I

    if-ne v7, v8, :cond_5

    .line 148
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mHeight:I

    if-eq v7, v8, :cond_7

    .line 149
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Random map and imput image size mismatch!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 133
    .restart local v0       #buffer:[I
    .restart local v2       #i:I
    :cond_6
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mRandom:Ljava/util/Random;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aput v7, v0, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0           #buffer:[I
    .end local v2           #i:I
    :cond_7
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 156
    .local v6, output:Landroid/filterfw/core/Frame;
    const/4 v7, 0x2

    new-array v5, v7, [Landroid/filterfw/core/Frame;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    aput-object v8, v5, v7

    .line 157
    .local v5, inputs:[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/support/filters/CustomDocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v5, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 160
    const-string v7, "image"

    invoke-virtual {p0, v7, v6}, Landroid/support/filters/CustomDocumentaryFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 163
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 164
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/CustomDocumentaryFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 84
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/CustomDocumentaryFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/filters/CustomDocumentaryFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    .line 98
    :cond_0
    return-void
.end method
