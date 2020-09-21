.class Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/b;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)Lcom/journeyapps/barcodescanner/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)Lcom/journeyapps/barcodescanner/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->g()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->a(Lcom/journeyapps/barcodescanner/b;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
