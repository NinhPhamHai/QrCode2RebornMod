.class Lcom/barcodescanner/codegeneratorx88/reader/d/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->closeDetailsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;)Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/e;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;)Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;->d()V

    :cond_0
    return-void
.end method
