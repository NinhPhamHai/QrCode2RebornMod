.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;
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

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-interface {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    :cond_1
    :goto_0
    return-void
.end method
