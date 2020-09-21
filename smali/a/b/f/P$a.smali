.class La/b/f/P$a;
.super La/b/f/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/f/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:La/b/f/P;


# direct methods
.method constructor <init>(La/b/f/P;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La/b/f/K;-><init>()V

    .line 2
    iput-object p1, p0, La/b/f/P$a;->a:La/b/f/P;

    return-void
.end method


# virtual methods
.method public c(La/b/f/J;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/f/P$a;->a:La/b/f/P;

    invoke-static {p1}, La/b/f/P;->a(La/b/f/P;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, La/b/f/P$a;->a:La/b/f/P;

    invoke-virtual {p1}, La/b/f/J;->start()V

    .line 3
    iget-object p1, p0, La/b/f/P$a;->a:La/b/f/P;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La/b/f/P;->a(La/b/f/P;Z)Z

    :cond_0
    return-void
.end method

.method public d(La/b/f/J;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/f/P$a;->a:La/b/f/P;

    invoke-static {v0}, La/b/f/P;->c(La/b/f/P;)I

    .line 2
    iget-object v0, p0, La/b/f/P$a;->a:La/b/f/P;

    invoke-static {v0}, La/b/f/P;->b(La/b/f/P;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, La/b/f/P$a;->a:La/b/f/P;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/f/P;->a(La/b/f/P;Z)Z

    .line 4
    iget-object v0, p0, La/b/f/P$a;->a:La/b/f/P;

    invoke-virtual {v0}, La/b/f/J;->end()V

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, La/b/f/J;->removeListener(La/b/f/J$d;)La/b/f/J;

    return-void
.end method
