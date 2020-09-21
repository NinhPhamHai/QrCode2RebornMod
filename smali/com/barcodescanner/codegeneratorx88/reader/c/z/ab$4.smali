.class Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;
.super Ljava/lang/Object;
.source "ab.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->initializeNativeAdmob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    .line 66
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 3
    .param p1, "unifiedNativeAd"    # Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 69
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->access$000(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->access$100(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 72
    .local v0, "unifiedNativeAdView":Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-static {v1, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->access$200(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V

    .line 73
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$4;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    const v2, 0x7f0801c9

    invoke-virtual {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 74
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method
