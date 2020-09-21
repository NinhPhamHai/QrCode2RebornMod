.class public Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    .line 3
    const-class v0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    const v1, 0x7f080105

    const-string v2, "field \'mBottomNavigation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mBottomNavigation:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080054

    const-string v2, "field \'mContainerFragment\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800e6

    const-string v2, "field \'mllBannerAds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mllBannerAds:Landroid/widget/LinearLayout;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800e9

    const-string v2, "field \'mViewFakeButtonScan\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewFakeButtonScan:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    const v1, 0x7f0801b0

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewPager:Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    const v0, 0x7f080120

    const-string v1, "field \'mProgressLoading\' and method \'fakeClickProgress\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'mProgressLoading\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mProgressLoading:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;->b:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/v;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/v;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08012d

    const-string v2, "field \'rlSplash\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->rlSplash:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mBottomNavigation:Lcom/e/bottomnavigationviewex/BottomNavigationViewEx;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mllBannerAds:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewFakeButtonScan:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewPager:Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mProgressLoading:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->rlSplash:Landroid/widget/RelativeLayout;

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z_ViewBinding;->b:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
