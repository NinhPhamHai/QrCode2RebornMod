.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;JJJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iput-wide p6, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->a:J

    iput-wide p8, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->b:J

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->q(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->o(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->o(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->o(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->a:J

    sub-long/2addr v0, p1

    .line 3
    iget-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->rlSplash:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->p(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/s;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->q(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)V

    return-void
.end method
