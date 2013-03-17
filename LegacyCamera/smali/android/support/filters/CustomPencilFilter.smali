.class public Landroid/support/filters/CustomPencilFilter;
.super Landroid/filterfw/core/Filter;
.source "CustomPencilFilter.java"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final mSharpenShader:Ljava/lang/String;

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

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/support/filters/CustomPencilFilter;->mScale:F

    .line 39
    const/16 v0, 0x280

    iput v0, p0, Landroid/support/filters/CustomPencilFilter;->mTileSize:I

    .line 43
    iput v1, p0, Landroid/support/filters/CustomPencilFilter;->mWidth:I

    .line 44
    iput v1, p0, Landroid/support/filters/CustomPencilFilter;->mHeight:I

    .line 45
    iput v1, p0, Landroid/support/filters/CustomPencilFilter;->mTarget:I

    .line 48
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color_h = vec3(0.0, 0.0, 0.0);\n  vec3 nbr_color_v = vec3(0.0, 0.0, 0.0);\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y;\n  nbr_color_h -= texture2D(tex_sampler_0, coord).rgb;\n  coord.x = v_texcoord.x + 0.5 * stepsizeX;\n  coord.y = v_texcoord.y;\n  nbr_color_h += texture2D(tex_sampler_0, coord).rgb;\n  coord.x = v_texcoord.x;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color_v -= texture2D(tex_sampler_0, coord).rgb;\n  coord.x = v_texcoord.x;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color_v += texture2D(tex_sampler_0, coord).rgb;\n  nbr_color = abs(nbr_color_h) + abs(nbr_color_v);\n  gl_FragColor = vec4(10.0 * scale * nbr_color, 1.0);\n}\n"

    iput-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mSharpenShader:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x3f80

    .line 136
    iput p1, p0, Landroid/support/filters/CustomPencilFilter;->mWidth:I

    .line 137
    iput p2, p0, Landroid/support/filters/CustomPencilFilter;->mHeight:I

    .line 139
    iget-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "stepsizeX"

    iget v2, p0, Landroid/support/filters/CustomPencilFilter;->mWidth:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "stepsizeY"

    iget v2, p0, Landroid/support/filters/CustomPencilFilter;->mHeight:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Landroid/support/filters/CustomPencilFilter;->updateParameters()V

    .line 144
    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "scale"

    iget v2, p0, Landroid/support/filters/CustomPencilFilter;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "name"
    .parameter "context"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Landroid/support/filters/CustomPencilFilter;->updateParameters()V

    .line 155
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 88
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color_h = vec3(0.0, 0.0, 0.0);\n  vec3 nbr_color_v = vec3(0.0, 0.0, 0.0);\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y;\n  nbr_color_h -= texture2D(tex_sampler_0, coord).rgb;\n  coord.x = v_texcoord.x + 0.5 * stepsizeX;\n  coord.y = v_texcoord.y;\n  nbr_color_h += texture2D(tex_sampler_0, coord).rgb;\n  coord.x = v_texcoord.x;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color_v -= texture2D(tex_sampler_0, coord).rgb;\n  coord.x = v_texcoord.x;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color_v += texture2D(tex_sampler_0, coord).rgb;\n  nbr_color = abs(nbr_color_h) + abs(nbr_color_v);\n  gl_FragColor = vec4(10.0 * scale * nbr_color, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 95
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/support/filters/CustomPencilFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 96
    iput-object v0, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 103
    iput p2, p0, Landroid/support/filters/CustomPencilFilter;->mTarget:I

    .line 104
    return-void

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 109
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/support/filters/CustomPencilFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 110
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 113
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 116
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/support/filters/CustomPencilFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 117
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/support/filters/CustomPencilFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 121
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/support/filters/CustomPencilFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/support/filters/CustomPencilFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 122
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/support/filters/CustomPencilFilter;->updateFrameSize(II)V

    .line 126
    :cond_3
    iget-object v3, p0, Landroid/support/filters/CustomPencilFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 129
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/support/filters/CustomPencilFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 132
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 133
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/CustomPencilFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 83
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/CustomPencilFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
