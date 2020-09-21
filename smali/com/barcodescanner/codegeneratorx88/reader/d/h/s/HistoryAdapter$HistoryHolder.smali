.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

.field ivDeleteHistory:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c1
    .end annotation
.end field

.field ivFavoriteHistory:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c3
    .end annotation
.end field

.field ivItemSelected:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c6
    .end annotation
.end field

.field ivThumbnailItemHistory:Landroid/widget/ImageView;
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

.field llRightItem:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800ec
    .end annotation
.end field

.field mBottomBorder:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080030
    .end annotation
.end field

.field swipeLayoutHistory:Lcom/c/swipe/SwipeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08015f
    .end annotation
.end field

.field tvDateTimeHistory:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080180
    .end annotation
.end field

.field tvGroupHistory:Landroid/widget/TextView;
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

.field viewLineHistory:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801ad
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
