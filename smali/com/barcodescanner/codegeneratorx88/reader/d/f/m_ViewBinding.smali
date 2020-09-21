.class public Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    .line 3
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f080131

    const-string v2, "field \'rvFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    .line 4
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0800a0

    const-string v2, "field \'frQRDetails\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->frQRDetails:Landroid/widget/FrameLayout;

    const v0, 0x7f0800d2

    const-string v1, "field \'ivSortFavorites\' and method \'sortFavoriteQRCode\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSortFavorites\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->ivSortFavorites:Landroid/widget/ImageView;

    .line 7
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/f;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800be

    const-string v1, "field \'ivAdsGift\' and method \'showAdsGift\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAdsGift\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->ivAdsGift:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/g;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08012c

    const-string v2, "field \'rlEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    .line 14
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f080098

    const-string v2, "field \'frContainerAds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->frContainerAds:Landroid/widget/FrameLayout;

    .line 15
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800b7

    const-string v2, "field \'mImgCloseSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mImgCloseSearch:Landroid/widget/ImageView;

    .line 16
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f080073

    const-string v2, "field \'mEdtSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mEdtSearch:Landroid/widget/EditText;

    const v0, 0x7f0801a8

    const-string v1, "method \'templeClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/h;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->frQRDetails:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->ivSortFavorites:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->ivAdsGift:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->frContainerAds:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mImgCloseSearch:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mEdtSearch:Landroid/widget/EditText;

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->b:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->c:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
