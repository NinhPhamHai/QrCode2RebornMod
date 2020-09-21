.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;
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
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewFakeButtonScan:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mBottomNavigation:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mllBannerAds:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mBottomNavigation:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getSelectedItemId()I

    move-result v0

    const v1, 0x7f08010a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->d(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    move-result-object v0

    iget-boolean v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/u;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Z)Z

    return-void
.end method
