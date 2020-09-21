.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(ILcom/c/swipe/SwipeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/c/swipe/SwipeLayout;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;ILcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iput p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->a:I

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->b:Lcom/c/swipe/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    move-result-object p1

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->a:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;->d(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget-object p1, p1, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1, p2}, Lcom/c/swipe/b/a;->b(Lcom/c/swipe/SwipeLayout;)V

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget-object p1, p1, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {p1}, Lcom/c/swipe/b/a;->a()V

    return-void
.end method
