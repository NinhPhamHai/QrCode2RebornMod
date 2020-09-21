.class La/b/f/n;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field private a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:La/b/f/p;


# direct methods
.method constructor <init>(La/b/f/p;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/n;->h:La/b/f/p;

    iput-object p2, p0, La/b/f/n;->b:Landroid/view/View;

    iput-object p3, p0, La/b/f/n;->c:Landroid/graphics/Rect;

    iput p4, p0, La/b/f/n;->d:I

    iput p5, p0, La/b/f/n;->e:I

    iput p6, p0, La/b/f/n;->f:I

    iput p7, p0, La/b/f/n;->g:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, La/b/f/n;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, La/b/f/n;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, La/b/f/n;->b:Landroid/view/View;

    iget-object v0, p0, La/b/f/n;->c:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, La/b/f/n;->b:Landroid/view/View;

    iget v0, p0, La/b/f/n;->d:I

    iget v1, p0, La/b/f/n;->e:I

    iget v2, p0, La/b/f/n;->f:I

    iget v3, p0, La/b/f/n;->g:I

    invoke-static {p1, v0, v1, v2, v3}, La/b/f/ha;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
