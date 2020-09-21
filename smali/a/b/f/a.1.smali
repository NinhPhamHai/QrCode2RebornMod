.class La/b/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/b/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/b/f/c;

    invoke-direct {v0}, La/b/f/c;-><init>()V

    sput-object v0, La/b/f/a;->a:La/b/f/d;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, La/b/f/b;

    invoke-direct {v0}, La/b/f/b;-><init>()V

    sput-object v0, La/b/f/a;->a:La/b/f/d;

    :goto_0
    return-void
.end method

.method static a(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    sget-object v0, La/b/f/a;->a:La/b/f/d;

    invoke-interface {v0, p0}, La/b/f/d;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method static a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 1
    sget-object v0, La/b/f/a;->a:La/b/f/d;

    invoke-interface {v0, p0, p1}, La/b/f/d;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static b(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    sget-object v0, La/b/f/a;->a:La/b/f/d;

    invoke-interface {v0, p0}, La/b/f/d;->b(Landroid/animation/Animator;)V

    return-void
.end method
