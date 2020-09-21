.class La/b/f/O;
.super La/b/f/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/f/P;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/f/J;

.field final synthetic b:La/b/f/P;


# direct methods
.method constructor <init>(La/b/f/P;La/b/f/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/O;->b:La/b/f/P;

    iput-object p2, p0, La/b/f/O;->a:La/b/f/J;

    invoke-direct {p0}, La/b/f/K;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La/b/f/J;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/f/O;->a:La/b/f/J;

    invoke-virtual {v0}, La/b/f/J;->runAnimators()V

    .line 2
    invoke-virtual {p1, p0}, La/b/f/J;->removeListener(La/b/f/J$d;)La/b/f/J;

    return-void
.end method
