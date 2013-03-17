.class public Landroid/filterfw/core/ShaderProgram;
.super Landroid/filterfw/core/Program;
.source "ShaderProgram.java"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "fragmentShader"

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    return-void
.end method

.method public static createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 0
    .parameter "inputs"
    .parameter "output"

    .prologue
    .line 13
    return-void
.end method

.method public setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 20
    return-void
.end method

.method public setMaximumTileSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 19
    return-void
.end method

.method public setSourceRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 17
    return-void
.end method
