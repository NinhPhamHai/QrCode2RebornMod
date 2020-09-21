.class Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;ILcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    iput p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->a:I

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->a:I

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;->a(Ljava/lang/String;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    iget-object p1, p1, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {p1}, Lcom/c/swipe/b/a;->a()V

    return-void
.end method
