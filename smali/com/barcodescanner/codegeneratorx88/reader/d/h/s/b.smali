.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$favorite()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;->a(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    const v0, 0x7f0700ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    const v0, 0x7f0700ea

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
