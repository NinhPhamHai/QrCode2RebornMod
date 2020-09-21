.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->c(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Z)Z

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mProgressLoading:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->t()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)I

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const v0, 0x7f0e005f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->c(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;I)I

    :goto_0
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/t;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->e(Landroid/content/Context;J)V

    return-void
.end method
