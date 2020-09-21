.class Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/d;
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
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-interface {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    :cond_0
    return-void
.end method
