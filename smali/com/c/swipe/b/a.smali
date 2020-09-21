.class public abstract Lcom/c/swipe/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/swipe/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/swipe/b/a$b;,
        Lcom/c/swipe/b/a$a;,
        Lcom/c/swipe/b/a$c;
    }
.end annotation


# instance fields
.field private a:Lcom/c/swipe/d/a;

.field public final b:I

.field protected c:I

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/c/swipe/SwipeLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Landroid/widget/BaseAdapter;

.field protected g:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/c/swipe/d/a;->a:Lcom/c/swipe/d/a;

    iput-object v0, p0, Lcom/c/swipe/b/a;->a:Lcom/c/swipe/d/a;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/c/swipe/b/a;->b:I

    .line 4
    iput v0, p0, Lcom/c/swipe/b/a;->c:I

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/c/swipe/b/a;->d:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/c/swipe/b/a;->e:Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 7
    instance-of v0, p1, Lcom/c/swipe/c/b;

    if-eqz v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/c/swipe/b/a;->g:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adapter should implement the SwipeAdapterInterface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Adapter can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/c/swipe/b/a;)Lcom/c/swipe/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/c/swipe/b/a;->a:Lcom/c/swipe/d/a;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/c/swipe/b/a;->f:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 7
    check-cast v0, Lcom/c/swipe/c/a;

    invoke-interface {v0, p1}, Lcom/c/swipe/c/a;->a(I)I

    move-result p1

    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/c/swipe/b/a;->g:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 9
    check-cast v0, Lcom/c/swipe/c/a;

    invoke-interface {v0, p1}, Lcom/c/swipe/c/a;->a(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/c/swipe/b/a;->a:Lcom/c/swipe/d/a;

    sget-object v1, Lcom/c/swipe/d/a;->b:Lcom/c/swipe/d/a;

    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/c/swipe/b/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/c/swipe/b/a;->c:I

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/c/swipe/b/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/swipe/SwipeLayout;

    .line 16
    invoke-virtual {v1}, Lcom/c/swipe/SwipeLayout;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/c/swipe/SwipeLayout;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/c/swipe/b/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/swipe/SwipeLayout;

    if-eq v1, p1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/c/swipe/SwipeLayout;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/c/swipe/d/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/c/swipe/b/a;->a:Lcom/c/swipe/d/a;

    .line 3
    iget-object p1, p0, Lcom/c/swipe/b/a;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 4
    iget-object p1, p0, Lcom/c/swipe/b/a;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/c/swipe/b/a;->c:I

    return-void
.end method

.method public b(Lcom/c/swipe/SwipeLayout;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/c/swipe/b/a;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/c/swipe/b/a;->a:Lcom/c/swipe/d/a;

    sget-object v1, Lcom/c/swipe/d/a;->b:Lcom/c/swipe/d/a;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/c/swipe/b/a;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/c/swipe/b/a;->c:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
