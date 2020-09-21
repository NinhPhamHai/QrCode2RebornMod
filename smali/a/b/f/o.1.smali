.class La/b/f/o;
.super La/b/f/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/f/p;->createAnimator(Landroid/view/ViewGroup;La/b/f/S;La/b/f/S;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:La/b/f/p;


# direct methods
.method constructor <init>(La/b/f/p;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/o;->c:La/b/f/p;

    iput-object p2, p0, La/b/f/o;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, La/b/f/K;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, La/b/f/o;->a:Z

    return-void
.end method


# virtual methods
.method public a(La/b/f/J;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/f/o;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La/b/f/X;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public b(La/b/f/J;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/f/o;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/b/f/X;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(La/b/f/J;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/f/o;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/f/o;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/f/X;->a(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, La/b/f/J;->removeListener(La/b/f/J$d;)La/b/f/J;

    return-void
.end method

.method public e(La/b/f/J;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/f/o;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/b/f/X;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, La/b/f/o;->a:Z

    return-void
.end method
