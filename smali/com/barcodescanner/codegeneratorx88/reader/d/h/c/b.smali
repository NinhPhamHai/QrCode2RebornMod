.class Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;
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
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

.field final synthetic b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-interface {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    return-void
.end method
