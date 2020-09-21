.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/j;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

.field private e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field frContainerAds:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080098
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/google/android/gms/ads/AdView;

.field rlEmptyView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08012c
    .end annotation
.end field

.field rvCreatedQRCode:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08012f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e007c

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0075

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/f;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)V

    const v2, 0x7f0e007a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/g;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)V

    const v2, 0x7f0e0074

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/c/swipe/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->i()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$raw_text()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$created()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->d:J

    .line 6
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rvCreatedQRCode:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rvCreatedQRCode:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rvCreatedQRCode:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;

    sget-object v1, Lcom/c/swipe/d/a;->a:Lcom/c/swipe/d/a;

    invoke-virtual {v0, v1}, Lcom/c/swipe/a/a;->a(Lcom/c/swipe/d/a;)V

    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->h:Lcom/google/android/gms/ads/AdView;

    .line 2
    sget-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/utility/UtilsLib;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->g:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->c:Landroid/content/Context;

    const v1, 0x7f0e0104

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->frContainerAds:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->h:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->g:Z

    :cond_0
    return-void
.end method

.method onBack()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080036
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lb/c/a/b;->a(Landroid/app/Activity;)V

    const p1, 0x7f0a001b

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f080051

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/n;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/n;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v2, v2, v2, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/n;->a(Landroid/view/View;IIII)V

    .line 6
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->c:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->h()V

    .line 9
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-direct {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;-><init>()V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-virtual {p1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;->d()V

    return-void
.end method

.method onDelete()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08003a
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->k()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/l;->a()V

    .line 2
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onDestroy()V

    return-void
.end method
