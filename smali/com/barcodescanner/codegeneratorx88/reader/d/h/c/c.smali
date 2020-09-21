.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(ILcom/c/swipe/SwipeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/c/swipe/SwipeLayout;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;ILcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iput p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->a:I

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;

    move-result-object p1

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->a:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iget-object p1, p1, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->b:Lcom/c/swipe/SwipeLayout;

    invoke-virtual {p1, p2}, Lcom/c/swipe/b/a;->b(Lcom/c/swipe/SwipeLayout;)V

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iget-object p1, p1, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {p1}, Lcom/c/swipe/b/a;->a()V

    return-void
.end method
