.class Lcom/barcodescanner/codegeneratorx88/reader/d/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    iget-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    .line 3
    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
