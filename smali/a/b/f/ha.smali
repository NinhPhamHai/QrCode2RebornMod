.class La/b/f/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/b/f/na;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/b/f/ma;

    invoke-direct {v0}, La/b/f/ma;-><init>()V

    sput-object v0, La/b/f/ha;->a:La/b/f/na;

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, La/b/f/la;

    invoke-direct {v0}, La/b/f/la;-><init>()V

    sput-object v0, La/b/f/ha;->a:La/b/f/na;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, La/b/f/ka;

    invoke-direct {v0}, La/b/f/ka;-><init>()V

    sput-object v0, La/b/f/ha;->a:La/b/f/na;

    goto :goto_0

    :cond_2
    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 5
    new-instance v0, La/b/f/ja;

    invoke-direct {v0}, La/b/f/ja;-><init>()V

    sput-object v0, La/b/f/ha;->a:La/b/f/na;

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, La/b/f/ia;

    invoke-direct {v0}, La/b/f/ia;-><init>()V

    sput-object v0, La/b/f/ha;->a:La/b/f/na;

    .line 7
    :goto_0
    new-instance v0, La/b/f/fa;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, La/b/f/fa;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/b/f/ha;->d:Landroid/util/Property;

    .line 8
    new-instance v0, La/b/f/ga;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, La/b/f/ga;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/b/f/ha;->e:Landroid/util/Property;

    return-void
.end method

.method private static a()V
    .locals 3

    .line 9
    sget-boolean v0, La/b/f/ha;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, La/b/f/ha;->b:Ljava/lang/reflect/Field;

    .line 11
    sget-object v1, La/b/f/ha;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ViewUtils"

    const-string v2, "fetchViewFlagsField: "

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_0
    sput-boolean v0, La/b/f/ha;->c:Z

    :cond_0
    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 1

    .line 2
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0}, La/b/f/na;->c(Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0, p1}, La/b/f/na;->a(Landroid/view/View;F)V

    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 2

    .line 3
    invoke-static {}, La/b/f/ha;->a()V

    .line 4
    sget-object v0, La/b/f/ha;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 6
    sget-object v1, La/b/f/ha;->b:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p1, v0

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static a(Landroid/view/View;IIII)V
    .locals 6

    .line 8
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, La/b/f/na;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 7
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0, p1}, La/b/f/na;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static b(Landroid/view/View;)La/b/f/ea;
    .locals 1

    .line 1
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0}, La/b/f/na;->b(Landroid/view/View;)La/b/f/ea;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 2
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0, p1}, La/b/f/na;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static c(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0}, La/b/f/na;->d(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static d(Landroid/view/View;)La/b/f/sa;
    .locals 1

    .line 1
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0}, La/b/f/na;->e(Landroid/view/View;)La/b/f/sa;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, La/b/f/ha;->a:La/b/f/na;

    invoke-interface {v0, p0}, La/b/f/na;->a(Landroid/view/View;)V

    return-void
.end method
