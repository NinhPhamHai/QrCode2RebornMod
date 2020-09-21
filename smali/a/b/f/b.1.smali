.class La/b/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/f/b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 4
    instance-of v4, v3, La/b/f/b$a;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, La/b/f/b$a;

    invoke-interface {v3, p1}, La/b/f/b$a;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 4
    instance-of v4, v3, La/b/f/b$a;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, La/b/f/b$a;

    invoke-interface {v3, p1}, La/b/f/b$a;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
