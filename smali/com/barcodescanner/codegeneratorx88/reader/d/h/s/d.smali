.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/swipe/SwipeLayout$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/swipe/SwipeLayout;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/c/swipe/SwipeLayout;FF)V
    .locals 0

    return-void
.end method

.method public a(Lcom/c/swipe/SwipeLayout;II)V
    .locals 0

    return-void
.end method

.method public b(Lcom/c/swipe/SwipeLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->swipeLayoutHistory:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1}, Lcom/c/swipe/SwipeLayout;->getOpenStatus()Lcom/c/swipe/SwipeLayout$f;

    move-result-object p1

    sget-object v0, Lcom/c/swipe/SwipeLayout$f;->b:Lcom/c/swipe/SwipeLayout$f;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :goto_0
    return-void
.end method

.method public c(Lcom/c/swipe/SwipeLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    return-void
.end method

.method public d(Lcom/c/swipe/SwipeLayout;)V
    .locals 0

    return-void
.end method
