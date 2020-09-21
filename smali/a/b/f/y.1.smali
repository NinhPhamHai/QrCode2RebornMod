.class La/b/f/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/b/f/B;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/b/f/A;

    invoke-direct {v0}, La/b/f/A;-><init>()V

    sput-object v0, La/b/f/y;->a:La/b/f/B;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, La/b/f/z;

    invoke-direct {v0}, La/b/f/z;-><init>()V

    sput-object v0, La/b/f/y;->a:La/b/f/B;

    :goto_0
    return-void
.end method

.method static a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 1
    sget-object v0, La/b/f/y;->a:La/b/f/B;

    invoke-interface {v0, p0, p1}, La/b/f/B;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method
