.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->c(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 2
    sget-object p1, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->i(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 5
    sget-object p1, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->j(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)I

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->i(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const v0, 0x7f0e0026

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->i(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const v0, 0x7f0e0027

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;I)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;I)I

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/q;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->k(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)V

    return-void
.end method
