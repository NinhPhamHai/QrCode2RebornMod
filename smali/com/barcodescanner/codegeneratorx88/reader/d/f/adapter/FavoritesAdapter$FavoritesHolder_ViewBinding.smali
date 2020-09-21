.class public Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;

    .line 3
    const-class v0, Lcom/c/swipe/SwipeLayout;

    const v1, 0x7f08015f

    const-string v2, "field \'swipeLayoutFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/swipe/SwipeLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->swipeLayoutFavorites:Lcom/c/swipe/SwipeLayout;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800d4

    const-string v2, "field \'ivThumbnailFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->ivThumbnailFavorites:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080185

    const-string v2, "field \'tvGroupFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->tvGroupFavorites:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080180

    const-string v2, "field \'tvDateTimeFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->tvDateTimeFavorites:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080195

    const-string v2, "field \'tvTitleItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->tvTitleItem:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c3

    const-string v2, "field \'ivFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->ivFavorites:Landroid/widget/ImageView;

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c1

    const-string v2, "field \'ivDeleteFavorites\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->ivDeleteFavorites:Landroid/widget/ImageView;

    const v0, 0x7f0801ad

    const-string v1, "field \'viewLineFavorites\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->viewLineFavorites:Landroid/view/View;

    .line 11
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800e8

    const-string v2, "field \'llDetailsItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->llDetailsItem:Landroid/view/ViewGroup;

    .line 12
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0801a7

    const-string v2, "field \'viewGroupDetailsItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->viewGroupDetailsItem:Landroid/view/ViewGroup;

    .line 13
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800e5

    const-string v2, "field \'llContainerAds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->llContainerAds:Landroid/view/ViewGroup;

    const v0, 0x7f080030

    const-string v1, "field \'mBottomBorder\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->mBottomBorder:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->swipeLayoutFavorites:Lcom/c/swipe/SwipeLayout;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->ivThumbnailFavorites:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->tvGroupFavorites:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->tvDateTimeFavorites:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->tvTitleItem:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->ivFavorites:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->ivDeleteFavorites:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->viewLineFavorites:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->llDetailsItem:Landroid/view/ViewGroup;

    .line 12
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->viewGroupDetailsItem:Landroid/view/ViewGroup;

    .line 13
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->llContainerAds:Landroid/view/ViewGroup;

    .line 14
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->mBottomBorder:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
