.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;
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
.field final synthetic a:I

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;ILcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iput p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;->a:I

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;->a:I

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->swipeLayoutHistory:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;ILcom/c/swipe/SwipeLayout;)V

    return-void
.end method
