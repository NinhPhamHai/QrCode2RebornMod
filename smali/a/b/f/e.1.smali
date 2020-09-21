.class public La/b/f/e;
.super La/b/f/P;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/b/f/P;-><init>()V

    .line 2
    invoke-direct {p0}, La/b/f/e;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, La/b/f/P;->a(I)La/b/f/P;

    .line 2
    new-instance v1, La/b/f/r;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, La/b/f/r;-><init>(I)V

    invoke-virtual {p0, v1}, La/b/f/P;->a(La/b/f/J;)La/b/f/P;

    new-instance v1, La/b/f/p;

    invoke-direct {v1}, La/b/f/p;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, La/b/f/P;->a(La/b/f/J;)La/b/f/P;

    new-instance v1, La/b/f/r;

    invoke-direct {v1, v0}, La/b/f/r;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, La/b/f/P;->a(La/b/f/J;)La/b/f/P;

    return-void
.end method
