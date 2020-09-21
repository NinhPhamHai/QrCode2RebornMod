.class Lcom/journeyapps/barcodescanner/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/r;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/l;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/l;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/r;->a(Lcom/journeyapps/barcodescanner/r;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/l;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/r;->b(Lcom/journeyapps/barcodescanner/r;)Lcom/google/zxing/client/android/BeepManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/l;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/r;->c(Lcom/journeyapps/barcodescanner/r;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/journeyapps/barcodescanner/k;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/k;-><init>(Lcom/journeyapps/barcodescanner/l;Lcom/journeyapps/barcodescanner/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
