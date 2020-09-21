.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    .line 3
    const-class v0, Lcom/c/swipe/SwipeLayout;

    const v1, 0x7f08015f

    const-string v2, "field \'swipeLayoutHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/swipe/SwipeLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->swipeLayoutHistory:Lcom/c/swipe/SwipeLayout;

    const v0, 0x7f0801ad

    const-string v1, "field \'viewLineHistory\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800d4

    const-string v2, "field \'ivThumbnailItemHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivThumbnailItemHistory:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080195

    const-string v2, "field \'tvTitleItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvTitleItem:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080180

    const-string v2, "field \'tvDateTimeHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvDateTimeHistory:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080185

    const-string v2, "field \'tvGroupHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c1

    const-string v2, "field \'ivDeleteHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivDeleteHistory:Landroid/widget/ImageView;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c3

    const-string v2, "field \'ivFavoriteHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    .line 11
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800e8

    const-string v2, "field \'llDetailsItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llDetailsItem:Landroid/view/ViewGroup;

    .line 12
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0801a7

    const-string v2, "field \'viewGroupDetailsItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewGroupDetailsItem:Landroid/view/ViewGroup;

    .line 13
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800ec

    const-string v2, "field \'llRightItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llRightItem:Landroid/view/ViewGroup;

    .line 14
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800e5

    const-string v2, "field \'llContainerAds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llContainerAds:Landroid/view/ViewGroup;

    const v0, 0x7f0800c6

    const-string v1, "field \'ivItemSelected\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivItemSelected:Landroid/view/View;

    const v0, 0x7f080030

    const-string v1, "field \'mBottomBorder\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->swipeLayoutHistory:Lcom/c/swipe/SwipeLayout;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivThumbnailItemHistory:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvTitleItem:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvDateTimeHistory:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivDeleteHistory:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llDetailsItem:Landroid/view/ViewGroup;

    .line 12
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewGroupDetailsItem:Landroid/view/ViewGroup;

    .line 13
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llRightItem:Landroid/view/ViewGroup;

    .line 14
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llContainerAds:Landroid/view/ViewGroup;

    .line 15
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivItemSelected:Landroid/view/View;

    .line 16
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
