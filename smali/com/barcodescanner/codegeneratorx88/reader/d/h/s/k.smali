.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    move-result-object p1

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
