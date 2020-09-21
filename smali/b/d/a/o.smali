.class public Lb/d/a/o;
.super Lb/d/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/o$b;,
        Lb/d/a/o$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb/d/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lb/d/a/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lb/d/a/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lb/d/a/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lb/d/a/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lb/d/a/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Landroid/view/animation/Interpolator;

.field private static final i:Lb/d/a/i;

.field private static final j:Lb/d/a/i;

.field private static k:J


# instance fields
.field private A:Landroid/view/animation/Interpolator;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/d/a/o$b;",
            ">;"
        }
    .end annotation
.end field

.field C:[Lb/d/a/h;

.field D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/d/a/h;",
            ">;"
        }
    .end annotation
.end field

.field l:J

.field m:J

.field private n:Z

.field private o:I

.field private p:F

.field private q:Z

.field private r:J

.field s:I

.field private t:Z

.field private u:Z

.field v:Z

.field private w:J

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/d/a/o;->b:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Lb/d/a/j;

    invoke-direct {v0}, Lb/d/a/j;-><init>()V

    sput-object v0, Lb/d/a/o;->c:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Lb/d/a/k;

    invoke-direct {v0}, Lb/d/a/k;-><init>()V

    sput-object v0, Lb/d/a/o;->d:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Lb/d/a/l;

    invoke-direct {v0}, Lb/d/a/l;-><init>()V

    sput-object v0, Lb/d/a/o;->e:Ljava/lang/ThreadLocal;

    .line 5
    new-instance v0, Lb/d/a/m;

    invoke-direct {v0}, Lb/d/a/m;-><init>()V

    sput-object v0, Lb/d/a/o;->f:Ljava/lang/ThreadLocal;

    .line 6
    new-instance v0, Lb/d/a/n;

    invoke-direct {v0}, Lb/d/a/n;-><init>()V

    sput-object v0, Lb/d/a/o;->g:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lb/d/a/o;->h:Landroid/view/animation/Interpolator;

    .line 8
    new-instance v0, Lb/d/a/d;

    invoke-direct {v0}, Lb/d/a/d;-><init>()V

    sput-object v0, Lb/d/a/o;->i:Lb/d/a/i;

    .line 9
    new-instance v0, Lb/d/a/b;

    invoke-direct {v0}, Lb/d/a/b;-><init>()V

    sput-object v0, Lb/d/a/o;->j:Lb/d/a/i;

    const-wide/16 v0, 0xa

    .line 10
    sput-wide v0, Lb/d/a/o;->k:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/d/a/a;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lb/d/a/o;->m:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/d/a/o;->n:Z

    .line 4
    iput v0, p0, Lb/d/a/o;->o:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lb/d/a/o;->p:F

    .line 6
    iput-boolean v0, p0, Lb/d/a/o;->q:Z

    .line 7
    iput v0, p0, Lb/d/a/o;->s:I

    .line 8
    iput-boolean v0, p0, Lb/d/a/o;->t:Z

    .line 9
    iput-boolean v0, p0, Lb/d/a/o;->u:Z

    .line 10
    iput-boolean v0, p0, Lb/d/a/o;->v:Z

    const-wide/16 v1, 0x12c

    .line 11
    iput-wide v1, p0, Lb/d/a/o;->w:J

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lb/d/a/o;->x:J

    .line 13
    iput v0, p0, Lb/d/a/o;->y:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lb/d/a/o;->z:I

    .line 15
    sget-object v0, Lb/d/a/o;->h:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lb/d/a/o;->A:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lb/d/a/o;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lb/d/a/o;->x:J

    return-wide v0
.end method

.method public static varargs a([F)Lb/d/a/o;
    .locals 1

    .line 5
    new-instance v0, Lb/d/a/o;

    invoke-direct {v0}, Lb/d/a/o;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lb/d/a/o;->b([F)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/o;->c:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private a(Z)V
    .locals 6

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    iput-boolean p1, p0, Lb/d/a/o;->n:Z

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lb/d/a/o;->o:I

    .line 21
    iput p1, p0, Lb/d/a/o;->s:I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lb/d/a/o;->u:Z

    .line 23
    iput-boolean p1, p0, Lb/d/a/o;->q:Z

    .line 24
    sget-object v1, Lb/d/a/o;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-wide v1, p0, Lb/d/a/o;->x:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 26
    invoke-virtual {p0}, Lb/d/a/o;->h()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lb/d/a/o;->b(J)V

    .line 27
    iput p1, p0, Lb/d/a/o;->s:I

    .line 28
    iput-boolean v0, p0, Lb/d/a/o;->t:Z

    .line 29
    iget-object v0, p0, Lb/d/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/d/a/a$a;

    invoke-interface {v3, p0}, Lb/d/a/a$a;->c(Lb/d/a/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lb/d/a/o;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/a/o$a;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lb/d/a/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/d/a/o$a;-><init>(Lb/d/a/j;)V

    .line 35
    sget-object v1, Lb/d/a/o;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 36
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 37
    :cond_2
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Lb/d/a/o;J)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lb/d/a/o;->e(J)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lb/d/a/o;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lb/d/a/o;->t:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/o;->e:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic b(Lb/d/a/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/d/a/o;->l()V

    return-void
.end method

.method static synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Lb/d/a/o;->k:J

    return-wide v0
.end method

.method static synthetic c(Lb/d/a/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/d/a/o;->k()V

    return-void
.end method

.method static synthetic d()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/o;->d:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/o;->g:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private e(J)Z
    .locals 6

    .line 2
    iget-boolean v0, p0, Lb/d/a/o;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lb/d/a/o;->q:Z

    .line 4
    iput-wide p1, p0, Lb/d/a/o;->r:J

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v2, p0, Lb/d/a/o;->r:J

    sub-long v2, p1, v2

    .line 6
    iget-wide v4, p0, Lb/d/a/o;->x:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 7
    iput-wide p1, p0, Lb/d/a/o;->l:J

    .line 8
    iput v1, p0, Lb/d/a/o;->s:I

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic f()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/o;->f:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private k()V
    .locals 5

    .line 1
    sget-object v0, Lb/d/a/o;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/d/a/o;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/d/a/o;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lb/d/a/o;->s:I

    .line 5
    iget-boolean v1, p0, Lb/d/a/o;->t:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/d/a/a;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/d/a/a$a;

    invoke-interface {v4, p0}, Lb/d/a/a$a;->d(Lb/d/a/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v0, p0, Lb/d/a/o;->t:Z

    .line 10
    iput-boolean v0, p0, Lb/d/a/o;->u:Z

    return-void
.end method

.method private l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lb/d/a/o;->i()V

    .line 2
    sget-object v0, Lb/d/a/o;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v0, p0, Lb/d/a/o;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lb/d/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/d/a/a$a;

    invoke-interface {v3, p0}, Lb/d/a/a$a;->c(Lb/d/a/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a(F)V
    .locals 4

    .line 57
    iget-object v0, p0, Lb/d/a/o;->A:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 58
    iput p1, p0, Lb/d/a/o;->p:F

    .line 59
    iget-object v0, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    iget-object v3, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lb/d/a/h;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 63
    iget-object v0, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/a/o$b;

    invoke-interface {v0, p0}, Lb/d/a/o$b;->a(Lb/d/a/o;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lb/d/a/o;->A:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lb/d/a/o;->A:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public a(Lb/d/a/o$b;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    .line 15
    :cond_0
    iget-object v0, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs a([Lb/d/a/h;)V
    .locals 6

    .line 7
    array-length v0, p1

    .line 8
    iput-object p1, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lb/d/a/o;->D:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    aget-object v3, p1, v2

    .line 11
    iget-object v4, p0, Lb/d/a/o;->D:Ljava/util/HashMap;

    invoke-virtual {v3}, Lb/d/a/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v1, p0, Lb/d/a/o;->v:Z

    return-void
.end method

.method a(J)Z
    .locals 9

    .line 38
    iget v0, p0, Lb/d/a/o;->s:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 39
    iput v3, p0, Lb/d/a/o;->s:I

    .line 40
    iget-wide v4, p0, Lb/d/a/o;->m:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 41
    iput-wide p1, p0, Lb/d/a/o;->l:J

    goto :goto_0

    :cond_0
    sub-long v4, p1, v4

    .line 42
    iput-wide v4, p0, Lb/d/a/o;->l:J

    const-wide/16 v4, -0x1

    .line 43
    iput-wide v4, p0, Lb/d/a/o;->m:J

    .line 44
    :cond_1
    :goto_0
    iget v0, p0, Lb/d/a/o;->s:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_5

    .line 45
    :cond_2
    iget-wide v6, p0, Lb/d/a/o;->w:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v8, v6, v1

    if-lez v8, :cond_3

    iget-wide v1, p0, Lb/d/a/o;->l:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_8

    .line 46
    iget p2, p0, Lb/d/a/o;->o:I

    iget v1, p0, Lb/d/a/o;->y:I

    if-lt p2, v1, :cond_5

    const/4 p2, -0x1

    if-ne v1, p2, :cond_4

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v5, 0x1

    goto :goto_4

    .line 48
    :cond_5
    :goto_2
    iget-object p2, p0, Lb/d/a/a;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    .line 49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_6

    .line 50
    iget-object v2, p0, Lb/d/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/d/a/a$a;

    invoke-interface {v2, p0}, Lb/d/a/a$a;->b(Lb/d/a/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 51
    :cond_6
    iget p2, p0, Lb/d/a/o;->z:I

    if-ne p2, v4, :cond_7

    .line 52
    iget-boolean p2, p0, Lb/d/a/o;->n:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lb/d/a/o;->n:Z

    .line 53
    :cond_7
    iget p2, p0, Lb/d/a/o;->o:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lb/d/a/o;->o:I

    rem-float/2addr p1, v0

    .line 54
    iget-wide v1, p0, Lb/d/a/o;->l:J

    iget-wide v3, p0, Lb/d/a/o;->w:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lb/d/a/o;->l:J

    .line 55
    :cond_8
    :goto_4
    iget-boolean p2, p0, Lb/d/a/o;->n:Z

    if-eqz p2, :cond_9

    sub-float p1, v0, p1

    .line 56
    :cond_9
    invoke-virtual {p0, p1}, Lb/d/a/o;->a(F)V

    :goto_5
    return v5
.end method

.method public b(J)V
    .locals 4

    .line 9
    invoke-virtual {p0}, Lb/d/a/o;->i()V

    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 11
    iget v2, p0, Lb/d/a/o;->s:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 12
    iput-wide p1, p0, Lb/d/a/o;->m:J

    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lb/d/a/o;->s:I

    :cond_0
    sub-long p1, v0, p1

    .line 14
    iput-wide p1, p0, Lb/d/a/o;->l:J

    .line 15
    invoke-virtual {p0, v0, v1}, Lb/d/a/o;->a(J)Z

    return-void
.end method

.method public varargs b([F)V
    .locals 3

    if-eqz p1, :cond_3

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0, p1}, Lb/d/a/h;->a([F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Lb/d/a/h;

    const-string v2, ""

    invoke-static {v2, p1}, Lb/d/a/h;->a(Ljava/lang/String;[F)Lb/d/a/h;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lb/d/a/o;->a([Lb/d/a/h;)V

    .line 8
    :goto_1
    iput-boolean v1, p0, Lb/d/a/o;->v:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public c(J)Lb/d/a/o;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 3
    iput-wide p1, p0, Lb/d/a/o;->w:J

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget v0, p0, Lb/d/a/o;->s:I

    if-nez v0, :cond_0

    sget-object v0, Lb/d/a/o;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lb/d/a/o;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lb/d/a/o;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/d/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/d/a/a$a;

    .line 5
    invoke-interface {v1, p0}, Lb/d/a/a$a;->a(Lb/d/a/a;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lb/d/a/o;->k()V

    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Lb/d/a/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/o;->clone()Lb/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lb/d/a/o;
    .locals 7

    .line 3
    invoke-super {p0}, Lb/d/a/a;->clone()Lb/d/a/a;

    move-result-object v0

    check-cast v0, Lb/d/a/o;

    .line 4
    iget-object v1, p0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    iget-object v5, v0, Lb/d/a/o;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 8
    iput-wide v3, v0, Lb/d/a/o;->m:J

    .line 9
    iput-boolean v2, v0, Lb/d/a/o;->n:Z

    .line 10
    iput v2, v0, Lb/d/a/o;->o:I

    .line 11
    iput-boolean v2, v0, Lb/d/a/o;->v:Z

    .line 12
    iput v2, v0, Lb/d/a/o;->s:I

    .line 13
    iput-boolean v2, v0, Lb/d/a/o;->q:Z

    .line 14
    iget-object v1, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    if-eqz v1, :cond_1

    .line 15
    array-length v3, v1

    .line 16
    new-array v4, v3, [Lb/d/a/h;

    iput-object v4, v0, Lb/d/a/o;->C:[Lb/d/a/h;

    .line 17
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lb/d/a/o;->D:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v3, :cond_1

    .line 18
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lb/d/a/h;->clone()Lb/d/a/h;

    move-result-object v4

    .line 19
    iget-object v5, v0, Lb/d/a/o;->C:[Lb/d/a/h;

    aput-object v4, v5, v2

    .line 20
    iget-object v5, v0, Lb/d/a/o;->D:Ljava/util/HashMap;

    invoke-virtual {v4}, Lb/d/a/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/d/a/o;->clone()Lb/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lb/d/a/o;->x:J

    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lb/d/a/o;->p:F

    return v0
.end method

.method public h()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/d/a/o;->v:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lb/d/a/o;->s:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lb/d/a/o;->l:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method i()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/d/a/o;->v:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lb/d/a/h;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/d/a/o;->v:Z

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/d/a/o;->a(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/d/a/o;->C:[Lb/d/a/h;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/d/a/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
