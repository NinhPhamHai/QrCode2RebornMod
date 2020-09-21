.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Z)Z

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->f(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    return-void
.end method
