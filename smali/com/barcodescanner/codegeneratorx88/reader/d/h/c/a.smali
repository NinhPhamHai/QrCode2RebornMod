.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;ILcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iput p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;->a:I

    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;->a:I

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->swipeLayout:Lcom/c/swipe/SwipeLayout;

    invoke-static {p1, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;ILcom/c/swipe/SwipeLayout;)V

    return-void
.end method
