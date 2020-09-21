.class public Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FavoritesHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

.field ivDeleteFavorites:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c1
    .end annotation
.end field

.field ivFavorites:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c3
    .end annotation
.end field

.field ivThumbnailFavorites:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d4
    .end annotation
.end field

.field llContainerAds:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800e5
    .end annotation
.end field

.field llDetailsItem:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800e8
    .end annotation
.end field

.field mBottomBorder:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080030
    .end annotation
.end field

.field swipeLayoutFavorites:Lcom/c/swipe/SwipeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08015f
    .end annotation
.end field

.field tvDateTimeFavorites:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080180
    .end annotation
.end field

.field tvGroupFavorites:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080185
    .end annotation
.end field

.field tvTitleItem:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080195
    .end annotation
.end field

.field viewGroupDetailsItem:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801a7
    .end annotation
.end field

.field viewLineFavorites:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801ad
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter$FavoritesHolder;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
