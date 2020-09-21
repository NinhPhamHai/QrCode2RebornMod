.class final Lcom/barcodescanner/codegeneratorx88/reader/b/b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/b/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/AdView;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/AdView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/b;->a:Lcom/google/android/gms/ads/AdView;

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/b;->a:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/c;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/b;->a:Lcom/google/android/gms/ads/AdView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/b;->a:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
