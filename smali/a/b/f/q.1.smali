.class La/b/f/q;
.super La/b/f/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/f/r;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:La/b/f/r;


# direct methods
.method constructor <init>(La/b/f/r;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/q;->b:La/b/f/r;

    iput-object p2, p0, La/b/f/q;->a:Landroid/view/View;

    invoke-direct {p0}, La/b/f/K;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La/b/f/J;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/f/q;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, La/b/f/ha;->a(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, La/b/f/q;->a:Landroid/view/View;

    invoke-static {v0}, La/b/f/ha;->a(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, La/b/f/J;->removeListener(La/b/f/J$d;)La/b/f/J;

    return-void
.end method
