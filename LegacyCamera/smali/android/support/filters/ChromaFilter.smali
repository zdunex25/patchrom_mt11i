.class public Landroid/support/filters/ChromaFilter;
.super Landroid/filterfw/core/Filter;
.source "ChromaFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChromaFilter"

.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float inv_height;\nuniform float inv_width;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float temp = color.r;\n  color.r = color.b;\n  color.b = temp;\n  gl_FragColor = color;\n}\n"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

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

    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/16 v0, 0x280

    iput v0, p0, Landroid/support/filters/ChromaFilter;->mTileSize:I

    .line 45
    iput v1, p0, Landroid/support/filters/ChromaFilter;->mWidth:I

    .line 46
    iput v1, p0, Landroid/support/filters/ChromaFilter;->mHeight:I

    .line 47
    iput v1, p0, Landroid/support/filters/ChromaFilter;->mTarget:I

    .line 65
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 131
    iput p1, p0, Landroid/support/filters/ChromaFilter;->mWidth:I

    .line 132
    iput p2, p0, Landroid/support/filters/ChromaFilter;->mHeight:I

    .line 134
    return-void
.end method

.method private updateProgramParams()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "name"
    .parameter "context"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/filters/ChromaFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Landroid/support/filters/ChromaFilter;->updateProgramParams()V

    .line 127
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 75
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 79
    packed-switch p2, :pswitch_data_0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Filter FisheyeFilter does not support frames of target "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float inv_height;\nuniform float inv_width;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float temp = color.r;\n  color.r = color.b;\n  color.b = temp;\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 82
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/support/filters/ChromaFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 83
    iput-object v0, p0, Landroid/support/filters/ChromaFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 90
    iput p2, p0, Landroid/support/filters/ChromaFilter;->mTarget:I

    .line 91
    return-void

    .line 79
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
    .line 96
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/support/filters/ChromaFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 97
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 100
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 103
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/support/filters/ChromaFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/support/filters/ChromaFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/support/filters/ChromaFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 108
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/support/filters/ChromaFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/support/filters/ChromaFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 109
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/support/filters/ChromaFilter;->updateFrameSize(II)V

    .line 113
    :cond_3
    iget-object v3, p0, Landroid/support/filters/ChromaFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 116
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/support/filters/ChromaFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 119
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 120
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/ChromaFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 70
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/support/filters/ChromaFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
