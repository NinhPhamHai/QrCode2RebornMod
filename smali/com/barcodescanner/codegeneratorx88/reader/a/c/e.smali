.class Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;Z)Z

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object v0

    const-string v1, "Resquest timeout"

    invoke-interface {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    :cond_1
    return-void
.end method
