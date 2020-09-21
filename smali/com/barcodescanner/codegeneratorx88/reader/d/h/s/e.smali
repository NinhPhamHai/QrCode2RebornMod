.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llDetailsItem:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->performClick()Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
