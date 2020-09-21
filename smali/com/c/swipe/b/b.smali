.class public Lcom/c/swipe/b/b;
.super Lcom/c/swipe/b/a;
.source "SourceFile"


# instance fields
.field protected h:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/c/swipe/b/a;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2
    iput-object p1, p0, Lcom/c/swipe/b/b;->h:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/c/swipe/b/a;->a(I)I

    move-result v0

    .line 2
    new-instance v1, Lcom/c/swipe/b/a$a;

    invoke-direct {v1, p0, p2}, Lcom/c/swipe/b/a$a;-><init>(Lcom/c/swipe/b/a;I)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/c/swipe/SwipeLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/c/swipe/b/a$b;

    invoke-direct {v2, p0, p2}, Lcom/c/swipe/b/a$b;-><init>(Lcom/c/swipe/b/a;I)V

    .line 6
    invoke-virtual {p1, v2}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$i;)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$c;)V

    .line 8
    new-instance v3, Lcom/c/swipe/b/a$c;

    invoke-direct {v3, p0, p2, v2, v1}, Lcom/c/swipe/b/a$c;-><init>(Lcom/c/swipe/b/a;ILcom/c/swipe/b/a$b;Lcom/c/swipe/b/a$a;)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/c/swipe/b/a;->e:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/swipe/b/a$c;

    .line 11
    iget-object v0, p1, Lcom/c/swipe/b/a$c;->b:Lcom/c/swipe/b/a$b;

    invoke-virtual {v0, p2}, Lcom/c/swipe/b/a$b;->a(I)V

    .line 12
    iget-object v0, p1, Lcom/c/swipe/b/a$c;->a:Lcom/c/swipe/b/a$a;

    invoke-virtual {v0, p2}, Lcom/c/swipe/b/a$a;->a(I)V

    .line 13
    iput p2, p1, Lcom/c/swipe/b/a$c;->c:I

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "can not find SwipeLayout in target view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
