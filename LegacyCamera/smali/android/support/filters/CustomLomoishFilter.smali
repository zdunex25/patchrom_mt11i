.class public Landroid/support/filters/CustomLomoishFilter;
.super Landroid/filterfw/core/Filter;
.source "CustomLomoishFilter.java"


# instance fields
.field private mHeight:I

.field private final mLomoishShader:Ljava/lang/String;

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

    .line 117
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x280

    iput v0, p0, Landroid/support/filters/CustomLomoishFilter;->mTileSize:I

    .line 40
    iput v1, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    .line 41
    iput v1, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    .line 42
    iput v1, p0, Landroid/support/filters/CustomLomoishFilter;->mTarget:I

    .line 48
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float stepsizeX;\nuniform float stepsizeY;\nuniform float stepsize;\nuniform vec2 center;\nuniform float inv_max_dist;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  vec3 s_color = vec3(color.rgb + 0.3 * nbr_color);\n  vec3 c_color = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (s_color.r < 0.5) {\n    value = s_color.r;\n  } else {\n    value = 1.0 - s_color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (s_color.r < 0.5) {\n    c_color.r = red;\n  } else {\n    c_color.r = 1.0 - red;\n  }\n  if (s_color.g < 0.5) {\n    value = s_color.g;\n  } else {\n    value = 1.0 - s_color.g;\n  }\n  float green = 2.0 * value * value;\n  if (s_color.g < 0.5) {\n    c_color.g = green;\n  } else {\n    c_color.g = 1.0 - green;\n  }\n  c_color.b = s_color.b * 0.5 + 0.25;\n  float dither = texture2D(tex_sampler_1, v_texcoord).r;\n  vec3 xform = clamp((c_color.rgb - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 bw_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  const float rate = 4.0;\n  float dist_rate = ((center.x - gl_FragCoord.x)/rate) * ((center.x - gl_FragCoord.x)/rate)   +  ((center.y - gl_FragCoord.y)/rate) * ((center.y - gl_FragCoord.y)/rate) ;\n  float dist = sqrt(dist_rate)*rate;\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.73) * 20.0)) + 0.15;\n  gl_FragColor = vec4(bw_color * lumen, color.a);\n}\n"

    iput-object v0, p0, Landroid/support/filters/CustomLomoishFilter;->mLomoishShader:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/support/filters/CustomLomoishFilter;->mRandom:Ljava/util/Random;

    .line 120
    return-void
.end method

.method private initParameters()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3fe0

    const/high16 v7, 0x3f80

    .line 157
    iget-object v4, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    .line 158
    iget v4, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-float v1, v4

    .line 159
    .local v1, centerX:F
    iget v4, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-float v2, v4

    .line 160
    .local v2, centerY:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    const/4 v4, 0x0

    aput v1, v0, v4

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 161
    .local v0, center:[F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 163
    .local v3, max_dist:F
    iget-object v4, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "center"

    invoke-virtual {v4, v5, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v4, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "inv_max_dist"

    div-float v6, v7, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v4, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "stepsize"

    const v6, 0x3b808081

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v4, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "stepsizeX"

    iget v6, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    int-to-float v6, v6

    div-float v6, v7, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v4, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v5, "stepsizeY"

    iget v6, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    int-to-float v6, v6

    div-float v6, v7, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
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
    .line 130
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float stepsizeX;\nuniform float stepsizeY;\nuniform float stepsize;\nuniform vec2 center;\nuniform float inv_max_dist;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  vec3 s_color = vec3(color.rgb + 0.3 * nbr_color);\n  vec3 c_color = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (s_color.r < 0.5) {\n    value = s_color.r;\n  } else {\n    value = 1.0 - s_color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (s_color.r < 0.5) {\n    c_color.r = red;\n  } else {\n    c_color.r = 1.0 - red;\n  }\n  if (s_color.g < 0.5) {\n    value = s_color.g;\n  } else {\n    value = 1.0 - s_color.g;\n  }\n  float green = 2.0 * value * value;\n  if (s_color.g < 0.5) {\n    c_color.g = green;\n  } else {\n    c_color.g = 1.0 - green;\n  }\n  c_color.b = s_color.b * 0.5 + 0.25;\n  float dither = texture2D(tex_sampler_1, v_texcoord).r;\n  vec3 xform = clamp((c_color.rgb - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - 0.15) * 1.53846, 0.0, 1.0);\n  vec3 bw_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  const float rate = 4.0;\n  float dist_rate = ((center.x - gl_FragCoord.x)/rate) * ((center.x - gl_FragCoord.x)/rate)   +  ((center.y - gl_FragCoord.y)/rate) * ((center.y - gl_FragCoord.y)/rate) ;\n  float dist = sqrt(dist_rate)*rate;\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.73) * 20.0)) + 0.15;\n  gl_FragColor = vec4(bw_color * lumen, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 145
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/support/filters/CustomLomoishFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 146
    iput-object v0, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 153
    iput p2, p0, Landroid/support/filters/CustomLomoishFilter;->mTarget:I

    .line 154
    return-void

    .line 142
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

    .line 175
    const-string v7, "image"

    invoke-virtual {p0, v7}, Landroid/support/filters/CustomLomoishFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 176
    .local v3, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    .line 179
    .local v4, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mTarget:I

    if-eq v7, v8, :cond_1

    .line 180
    :cond_0
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroid/support/filters/CustomLomoishFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 184
    :cond_1
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    if-eq v7, v8, :cond_4

    .line 185
    :cond_2
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iput v7, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    .line 186
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iput v7, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    .line 188
    iget v7, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    mul-int/2addr v7, v8

    new-array v0, v7, [I

    .line 189
    .local v0, buffer:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    mul-int/2addr v7, v8

    if-lt v2, v7, :cond_6

    .line 192
    iget v7, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    invoke-static {v7, v8, v9, v9}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 195
    .local v1, format:Landroid/filterfw/core/FrameFormat;
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_3

    .line 196
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 198
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    iput-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    .line 199
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 201
    invoke-direct {p0}, Landroid/support/filters/CustomLomoishFilter;->initParameters()V

    .line 204
    .end local v0           #buffer:[I
    .end local v1           #format:Landroid/filterfw/core/FrameFormat;
    .end local v2           #i:I
    :cond_4
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mWidth:I

    if-ne v7, v8, :cond_5

    .line 205
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/support/filters/CustomLomoishFilter;->mHeight:I

    if-eq v7, v8, :cond_7

    .line 206
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Random map and imput image size mismatch!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 190
    .restart local v0       #buffer:[I
    .restart local v2       #i:I
    :cond_6
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mRandom:Ljava/util/Random;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aput v7, v0, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0           #buffer:[I
    .end local v2           #i:I
    :cond_7
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 213
    .local v6, output:Landroid/filterfw/core/Frame;
    const/4 v7, 0x2

    new-array v5, v7, [Landroid/filterfw/core/Frame;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    aput-object v8, v5, v7

    .line 214
    .local v5, inputs:[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/support/filters/CustomLomoishFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v5, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 217
    const-string v7, "image"

    invoke-virtual {p0, v7, v6}, Landroid/support/filters/CustomLomoishFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 220
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 221
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/CustomLomoishFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 125
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/CustomLomoishFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/filters/CustomLomoishFilter;->mNoiseFrame:Landroid/filterfw/core/Frame;

    .line 139
    :cond_0
    return-void
.end method
