.class La/b/f/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/b/f/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/b/f/u;

    invoke-direct {v0}, La/b/f/u;-><init>()V

    sput-object v0, La/b/f/s;->a:La/b/f/v;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, La/b/f/t;

    invoke-direct {v0}, La/b/f/t;-><init>()V

    sput-object v0, La/b/f/s;->a:La/b/f/v;

    :goto_0
    return-void
.end method

.method static a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 1
    sget-object v0, La/b/f/s;->a:La/b/f/v;

    invoke-interface {v0, p0, p1, p2}, La/b/f/v;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
