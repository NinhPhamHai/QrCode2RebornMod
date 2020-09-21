.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/b/lib/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->g(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->f(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Landroid/os/Handler;)Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/b/lib/a;->a(Z)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/h;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->g(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
