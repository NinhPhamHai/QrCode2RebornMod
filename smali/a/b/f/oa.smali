.class La/b/f/oa;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/f/pa;->b(Landroid/view/ViewGroup;La/b/f/S;ILa/b/f/S;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/f/W;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:La/b/f/pa;


# direct methods
.method constructor <init>(La/b/f/pa;La/b/f/W;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/oa;->c:La/b/f/pa;

    iput-object p2, p0, La/b/f/oa;->a:La/b/f/W;

    iput-object p3, p0, La/b/f/oa;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/f/oa;->a:La/b/f/W;

    iget-object v0, p0, La/b/f/oa;->b:Landroid/view/View;

    invoke-interface {p1, v0}, La/b/f/W;->b(Landroid/view/View;)V

    return-void
.end method
