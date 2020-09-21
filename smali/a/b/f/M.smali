.class public La/b/f/M;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/f/M$a;
    }
.end annotation


# static fields
.field private static a:La/b/f/J;

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "La/b/f/J;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/b/f/e;

    invoke-direct {v0}, La/b/f/e;-><init>()V

    sput-object v0, La/b/f/M;->a:La/b/f/J;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/b/f/M;->b:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La/b/f/M;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, La/b/f/M;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;La/b/f/J;)V
    .locals 1

    .line 2
    sget-object v0, La/b/f/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, La/b/f/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 4
    sget-object p1, La/b/f/M;->a:La/b/f/J;

    .line 5
    :cond_0
    invoke-virtual {p1}, La/b/f/J;->clone()La/b/f/J;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, La/b/f/M;->c(Landroid/view/ViewGroup;La/b/f/J;)V

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, La/b/f/E;->a(Landroid/view/View;La/b/f/E;)V

    .line 8
    invoke-static {p0, p1}, La/b/f/M;->b(Landroid/view/ViewGroup;La/b/f/J;)V

    :cond_1
    return-void
.end method

.method static b()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "La/b/f/J;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, La/b/f/M;->b:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object v0, La/b/f/M;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method private static b(Landroid/view/ViewGroup;La/b/f/J;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 8
    new-instance v0, La/b/f/M$a;

    invoke-direct {v0, p1, p0}, La/b/f/M$a;-><init>(La/b/f/J;Landroid/view/ViewGroup;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;La/b/f/J;)V
    .locals 2

    .line 1
    invoke-static {}, La/b/f/M;->b()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/f/J;

    .line 4
    invoke-virtual {v1, p0}, La/b/f/J;->pause(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, p0, v0}, La/b/f/J;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 6
    :cond_1
    invoke-static {p0}, La/b/f/E;->a(Landroid/view/View;)La/b/f/E;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, La/b/f/E;->a()V

    :cond_2
    return-void
.end method
