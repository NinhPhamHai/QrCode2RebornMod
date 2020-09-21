.class public Lcom/journeyapps/barcodescanner/j;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "j"


# instance fields
.field private final A:Lcom/journeyapps/barcodescanner/j$a;

.field private b:Lcom/journeyapps/barcodescanner/a/m;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Landroid/view/SurfaceView;

.field private g:Landroid/view/TextureView;

.field private h:Z

.field private i:Lcom/journeyapps/barcodescanner/C;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/journeyapps/barcodescanner/a/s;

.field private m:Lcom/journeyapps/barcodescanner/a/o;

.field private n:Lcom/journeyapps/barcodescanner/D;

.field private o:Lcom/journeyapps/barcodescanner/D;

.field private p:Landroid/graphics/Rect;

.field private q:Lcom/journeyapps/barcodescanner/D;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Rect;

.field private t:Lcom/journeyapps/barcodescanner/D;

.field private u:D

.field private v:Lcom/journeyapps/barcodescanner/a/x;

.field private w:Z

.field private final x:Landroid/view/SurfaceHolder$Callback;

.field private final y:Landroid/os/Handler$Callback;

.field private z:Lcom/journeyapps/barcodescanner/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->e:Z

    .line 3
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/journeyapps/barcodescanner/j;->j:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->k:Ljava/util/List;

    .line 6
    new-instance v1, Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v1}, Lcom/journeyapps/barcodescanner/a/o;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->m:Lcom/journeyapps/barcodescanner/a/o;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    .line 8
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 9
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 10
    iput-wide v2, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    .line 11
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    .line 12
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->w:Z

    .line 13
    new-instance v2, Lcom/journeyapps/barcodescanner/e;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/e;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->x:Landroid/view/SurfaceHolder$Callback;

    .line 14
    new-instance v2, Lcom/journeyapps/barcodescanner/f;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/f;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->y:Landroid/os/Handler$Callback;

    .line 15
    new-instance v2, Lcom/journeyapps/barcodescanner/h;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/h;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->z:Lcom/journeyapps/barcodescanner/A;

    .line 16
    new-instance v2, Lcom/journeyapps/barcodescanner/i;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/i;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    .line 17
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/journeyapps/barcodescanner/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->e:Z

    .line 20
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/journeyapps/barcodescanner/j;->j:I

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->k:Ljava/util/List;

    .line 23
    new-instance v1, Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v1}, Lcom/journeyapps/barcodescanner/a/o;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->m:Lcom/journeyapps/barcodescanner/a/o;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    .line 25
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 26
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 27
    iput-wide v2, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    .line 28
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    .line 29
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->w:Z

    .line 30
    new-instance v1, Lcom/journeyapps/barcodescanner/e;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/e;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->x:Landroid/view/SurfaceHolder$Callback;

    .line 31
    new-instance v1, Lcom/journeyapps/barcodescanner/f;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/f;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->y:Landroid/os/Handler$Callback;

    .line 32
    new-instance v1, Lcom/journeyapps/barcodescanner/h;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/h;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->z:Lcom/journeyapps/barcodescanner/A;

    .line 33
    new-instance v1, Lcom/journeyapps/barcodescanner/i;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/i;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    .line 34
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/journeyapps/barcodescanner/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->e:Z

    .line 37
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/journeyapps/barcodescanner/j;->j:I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->k:Ljava/util/List;

    .line 40
    new-instance v1, Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v1}, Lcom/journeyapps/barcodescanner/a/o;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->m:Lcom/journeyapps/barcodescanner/a/o;

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    .line 42
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 43
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 44
    iput-wide v2, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    .line 45
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    .line 46
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->w:Z

    .line 47
    new-instance v1, Lcom/journeyapps/barcodescanner/e;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/e;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->x:Landroid/view/SurfaceHolder$Callback;

    .line 48
    new-instance v1, Lcom/journeyapps/barcodescanner/f;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/f;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->y:Landroid/os/Handler$Callback;

    .line 49
    new-instance v1, Lcom/journeyapps/barcodescanner/h;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/h;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->z:Lcom/journeyapps/barcodescanner/A;

    .line 50
    new-instance v1, Lcom/journeyapps/barcodescanner/i;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/i;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/journeyapps/barcodescanner/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/j;Lcom/journeyapps/barcodescanner/D;)Lcom/journeyapps/barcodescanner/D;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->q:Lcom/journeyapps/barcodescanner/D;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/journeyapps/barcodescanner/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_0

    const/high16 p3, -0x1000000

    .line 5
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/j;->a(Landroid/util/AttributeSet;)V

    const-string p2, "window"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->c:Landroid/view/WindowManager;

    .line 8
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/journeyapps/barcodescanner/j;->y:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->d:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcom/journeyapps/barcodescanner/C;

    invoke-direct {p1}, Lcom/journeyapps/barcodescanner/C;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->i:Lcom/journeyapps/barcodescanner/C;

    return-void
.end method

.method private a(Lcom/journeyapps/barcodescanner/D;)V
    .locals 2

    .line 21
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->n:Lcom/journeyapps/barcodescanner/D;

    .line 22
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->d()Lcom/journeyapps/barcodescanner/a/s;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/a/s;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->getDisplayRotation()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/journeyapps/barcodescanner/a/s;-><init>(ILcom/journeyapps/barcodescanner/D;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->l:Lcom/journeyapps/barcodescanner/a/s;

    .line 25
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->l:Lcom/journeyapps/barcodescanner/a/s;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->getPreviewScalingStrategy()Lcom/journeyapps/barcodescanner/a/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/a/s;->a(Lcom/journeyapps/barcodescanner/a/x;)V

    .line 26
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->l:Lcom/journeyapps/barcodescanner/a/s;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/s;)V

    .line 27
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/a/m;->c()V

    .line 28
    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/j;->w:Z

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/a/m;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Lcom/journeyapps/barcodescanner/a/p;)V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/journeyapps/barcodescanner/j;->a:Ljava/lang/String;

    const-string v1, "Starting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/p;)V

    .line 40
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/a/m;->i()V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    .line 42
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->h()V

    .line 43
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    invoke-interface {p1}, Lcom/journeyapps/barcodescanner/j$a;->d()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->n()V

    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/j;)Lcom/journeyapps/barcodescanner/j$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    return-object p0
.end method

.method private b(Lcom/journeyapps/barcodescanner/D;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->o:Lcom/journeyapps/barcodescanner/D;

    .line 4
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->n:Lcom/journeyapps/barcodescanner/D;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->j()V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->n()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/j;Lcom/journeyapps/barcodescanner/D;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/j;->b(Lcom/journeyapps/barcodescanner/D;)V

    return-void
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->l()V

    return-void
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/j;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/j;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/j;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/j;->k:Ljava/util/List;

    return-object p0
.end method

.method private getDisplayRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->n:Lcom/journeyapps/barcodescanner/D;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->o:Lcom/journeyapps/barcodescanner/D;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/j;->l:Lcom/journeyapps/barcodescanner/a/s;

    if-eqz v3, :cond_2

    .line 2
    iget v4, v2, Lcom/journeyapps/barcodescanner/D;->a:I

    .line 3
    iget v5, v2, Lcom/journeyapps/barcodescanner/D;->b:I

    .line 4
    iget v6, v0, Lcom/journeyapps/barcodescanner/D;->a:I

    .line 5
    iget v0, v0, Lcom/journeyapps/barcodescanner/D;->b:I

    .line 6
    invoke-virtual {v3, v2}, Lcom/journeyapps/barcodescanner/a/s;->a(Lcom/journeyapps/barcodescanner/D;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Lcom/journeyapps/barcodescanner/j;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 11
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    mul-int v3, v3, v4

    iget-object v6, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v3, v6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    mul-int v6, v6, v5

    iget-object v7, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    mul-int v7, v7, v4

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v7, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v0, v0, v5

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v0, v4

    invoke-direct {v2, v3, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/j$a;->a()V

    goto :goto_2

    .line 22
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 23
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    .line 24
    sget-object v0, Lcom/journeyapps/barcodescanner/j;->a:Ljava/lang/String;

    const-string v1, "Preview frame is too small"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    .line 25
    :cond_2
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 26
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    .line 27
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "containerSize or previewSize is not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/j;->a:Ljava/lang/String;

    const-string v1, "initCamera called twice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->b()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/m;->a(Landroid/os/Handler;)V

    .line 5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->h()V

    .line 6
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/j;->j:I

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/journeyapps/barcodescanner/j;->j:I

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->i()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->o()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->q:Lcom/journeyapps/barcodescanner/D;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->o:Lcom/journeyapps/barcodescanner/D;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/journeyapps/barcodescanner/D;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/journeyapps/barcodescanner/a/p;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/journeyapps/barcodescanner/a/p;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/a/p;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->o:Lcom/journeyapps/barcodescanner/D;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/journeyapps/barcodescanner/D;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->o:Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {p0, v0, v1}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 8
    :cond_1
    new-instance v0, Lcom/journeyapps/barcodescanner/a/p;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/journeyapps/barcodescanner/a/p;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/a/p;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private o()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/d;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/d;-><init>(Lcom/journeyapps/barcodescanner/j;)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)Landroid/graphics/Matrix;
    .locals 4

    .line 30
    iget v0, p1, Lcom/journeyapps/barcodescanner/D;->a:I

    int-to-float v0, v0

    iget v1, p1, Lcom/journeyapps/barcodescanner/D;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 31
    iget v1, p2, Lcom/journeyapps/barcodescanner/D;->a:I

    int-to-float v1, v1

    iget p2, p2, Lcom/journeyapps/barcodescanner/D;->b:I

    int-to-float p2, p2

    div-float/2addr v1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float v0, v1, v0

    move p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr v0, v1

    .line 32
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    invoke-virtual {v1, p2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 34
    iget v2, p1, Lcom/journeyapps/barcodescanner/D;->a:I

    int-to-float v3, v2

    mul-float v3, v3, p2

    .line 35
    iget p1, p1, Lcom/journeyapps/barcodescanner/D;->b:I

    int-to-float p2, p1

    mul-float p2, p2, v0

    int-to-float v0, v2

    sub-float/2addr v0, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    .line 36
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1
.end method

.method protected a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 45
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 46
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    iget v1, v1, Lcom/journeyapps/barcodescanner/D;->a:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    iget v2, v2, Lcom/journeyapps/barcodescanner/D;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->inset(II)V

    return-object v0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v1, p1

    iget-wide v3, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p1, v1

    .line 51
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->inset(II)V

    :cond_1
    return-object v0
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget v0, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_framing_rect_width:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 12
    sget v2, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_framing_rect_height:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 13
    new-instance v2, Lcom/journeyapps/barcodescanner/D;

    invoke-direct {v2, v0, v1}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    .line 14
    :cond_0
    sget v0, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_use_texture_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->e:Z

    .line 15
    sget v0, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_preview_scaling_strategy:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 16
    new-instance v0, Lcom/journeyapps/barcodescanner/a/r;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/r;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 17
    new-instance v0, Lcom/journeyapps/barcodescanner/a/t;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/t;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/a/u;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/u;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/j$a;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()Lcom/journeyapps/barcodescanner/a/m;
    .locals 2

    .line 8
    new-instance v0, Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/journeyapps/barcodescanner/a/m;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->m:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/o;)V

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    return v0
.end method

.method public f()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/j;->a:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/journeyapps/barcodescanner/j;->j:I

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->b()V

    .line 6
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->h:Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->d:Landroid/os/Handler;

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_camera_closed:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->q:Lcom/journeyapps/barcodescanner/D;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->q:Lcom/journeyapps/barcodescanner/D;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 14
    :cond_2
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->n:Lcom/journeyapps/barcodescanner/D;

    .line 15
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->o:Lcom/journeyapps/barcodescanner/D;

    .line 16
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    .line 17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->i:Lcom/journeyapps/barcodescanner/C;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/C;->a()V

    .line 18
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->A:Lcom/journeyapps/barcodescanner/j$a;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/j$a;->c()V

    return-void
.end method

.method public g()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->f()V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->f()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x77359400

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x1

    .line 6
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    return-object v0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/a/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->m:Lcom/journeyapps/barcodescanner/a/o;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFramingRectSize()Lcom/journeyapps/barcodescanner/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    return-object v0
.end method

.method public getMarginFraction()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    return-wide v0
.end method

.method public getPreviewFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewScalingStrategy()Lcom/journeyapps/barcodescanner/a/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/journeyapps/barcodescanner/a/r;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/r;-><init>()V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/journeyapps/barcodescanner/a/t;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/t;-><init>()V

    return-object v0
.end method

.method public getZoom()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->e()V

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/j;->a:Ljava/lang/String;

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->k()V

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->q:Lcom/journeyapps/barcodescanner/D;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->n()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->o()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->o()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->i:Lcom/journeyapps/barcodescanner/C;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/j;->z:Lcom/journeyapps/barcodescanner/A;

    invoke-virtual {v0, v1, v2}, Lcom/journeyapps/barcodescanner/C;->a(Landroid/content/Context;Lcom/journeyapps/barcodescanner/A;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/j;->m()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/journeyapps/barcodescanner/D;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p1, p4, p5}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/D;)V

    .line 2
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->f:Landroid/view/SurfaceView;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p3, p0, Lcom/journeyapps/barcodescanner/j;->p:Landroid/graphics/Rect;

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p5, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/j;->g:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0xe

    if-lt p3, p4, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/TextureView;->layout(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 5
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "torch"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/j;->setTorch(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "super"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/j;->w:Z

    const-string v2, "torch"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/a/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->m:Lcom/journeyapps/barcodescanner/a/o;

    return-void
.end method

.method public setFramingRectSize(Lcom/journeyapps/barcodescanner/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->t:Lcom/journeyapps/barcodescanner/D;

    return-void
.end method

.method public setMarginFraction(D)V
    .locals 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/journeyapps/barcodescanner/j;->u:D

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The margin fraction must be less than 0.5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviewScalingStrategy(Lcom/journeyapps/barcodescanner/a/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/j;->v:Lcom/journeyapps/barcodescanner/a/x;

    return-void
.end method

.method public setTorch(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/j;->w:Z

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/a/m;->a(Z)V

    :cond_0
    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/j;->e:Z

    return-void
.end method

.method public setZoom(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/j;->b:Lcom/journeyapps/barcodescanner/a/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/a/m;->a(D)V

    :cond_0
    return-void
.end method
