.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

.field ivDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c1
    .end annotation
.end field

.field ivThumbnailItem:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d4
    .end annotation
.end field

.field llDetailsItem:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800e8
    .end annotation
.end field

.field swipeLayout:Lcom/c/swipe/SwipeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08015f
    .end annotation
.end field

.field tvDateTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080180
    .end annotation
.end field

.field tvTitleItem:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080195
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
