.class La/b/f/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/b/f/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/b/f/aa;

    invoke-direct {v0}, La/b/f/aa;-><init>()V

    sput-object v0, La/b/f/X;->a:La/b/f/ba;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, La/b/f/Z;

    invoke-direct {v0}, La/b/f/Z;-><init>()V

    sput-object v0, La/b/f/X;->a:La/b/f/ba;

    :goto_0
    return-void
.end method

.method static a(Landroid/view/ViewGroup;)La/b/f/W;
    .locals 1

    .line 1
    sget-object v0, La/b/f/X;->a:La/b/f/ba;

    invoke-interface {v0, p0}, La/b/f/ba;->a(Landroid/view/ViewGroup;)La/b/f/W;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 2
    sget-object v0, La/b/f/X;->a:La/b/f/ba;

    invoke-interface {v0, p0, p1}, La/b/f/ba;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
