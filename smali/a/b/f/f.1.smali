.class La/b/f/f;
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
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F

.field final synthetic e:La/b/f/p;


# direct methods
.method constructor <init>(La/b/f/p;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/f;->e:La/b/f/p;

    iput-object p2, p0, La/b/f/f;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, La/b/f/f;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, La/b/f/f;->c:Landroid/view/View;

    iput p5, p0, La/b/f/f;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/f/f;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, La/b/f/ha;->b(Landroid/view/View;)La/b/f/ea;

    move-result-object p1

    iget-object v0, p0, La/b/f/f;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, La/b/f/ea;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, La/b/f/f;->c:Landroid/view/View;

    iget v0, p0, La/b/f/f;->d:F

    invoke-static {p1, v0}, La/b/f/ha;->a(Landroid/view/View;F)V

    return-void
.end method
