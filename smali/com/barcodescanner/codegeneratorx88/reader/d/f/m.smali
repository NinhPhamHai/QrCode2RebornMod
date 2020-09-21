.class public Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/f/j;
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;


# static fields
.field public static f:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field frContainerAds:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080098
    .end annotation
.end field

.field frQRDetails:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800a0
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

.field private i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

.field ivAdsGift:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800be
    .end annotation
.end field

.field ivSortFavorites:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d2
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:Z

.field mEdtSearch:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080073
    .end annotation
.end field

.field mImgCloseSearch:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800b7
    .end annotation
.end field

.field private n:Lcom/google/android/gms/ads/AdView;

.field private o:I

.field rlEmptyView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08012c
    .end annotation
.end field

.field rvFavorites:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080131
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->k:Z

    .line 4
    sget v1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    iput v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l:I

    .line 5
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->o:I

    return p1
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->n:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 9

    .line 16
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f080125

    .line 19
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    const v3, 0x7f080126

    .line 20
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const v4, 0x7f080128

    .line 21
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v5, 0x7f080127

    .line 22
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v8, "key_sort_by"

    invoke-static {v8, v6, v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v6

    .line 24
    sget v7, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    if-ne v6, v7, :cond_0

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 26
    :cond_0
    sget v3, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->b:I

    if-ne v6, v3, :cond_1

    .line 27
    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 29
    :goto_0
    new-instance v3, Lcom/barcodescanner/codegeneratorx88/reader/d/f/e;

    invoke-direct {v3, p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x35

    .line 31
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 32
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 34
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 39
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l()I

    move-result v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->o:I

    return p0
.end method

.method static synthetic c(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->o:I

    return v0
.end method

.method static synthetic d(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->o()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/a;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-static {v0, p1, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdView;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->n:Lcom/google/android/gms/ads/AdView;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    return-object p0
.end method

.method static synthetic f(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    return-object p0
.end method

.method public static k()Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v2, "key_sort_by"

    invoke-static {v2, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l:I

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->j:Ljava/util/List;

    iget v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l:I

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/barcodescanner/codegeneratorx88/reader/d/f/i;I)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    sget-object v1, Lcom/c/swipe/d/a;->a:Lcom/c/swipe/d/a;

    invoke-virtual {v0, v1}, Lcom/c/swipe/a/a;->a(Lcom/c/swipe/d/a;)V

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    iget v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l:I

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->a(I)V

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->frQRDetails:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->b(Z)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->b(Z)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mImgCloseSearch:Landroid/widget/ImageView;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/b;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mEdtSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/c;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mEdtSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/f/d;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->frContainerAds:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->n:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->a(Ljava/lang/String;Z)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f0e002b

    .line 13
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->m:Z

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/c/swipe/a/a;->a()V

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->mImgCloseSearch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l:I

    .line 6
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->c(I)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->ivAdsGift:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 21
    sget v0, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    if-ne p1, v0, :cond_0

    .line 22
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->f()V

    goto :goto_0

    .line 23
    :cond_0
    sget v0, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->b:I

    if-ne p1, v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->g()V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->e()V

    :goto_0
    return-void
.end method

.method public c(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 4

    const/4 v0, 0x0

    .line 14
    :try_start_0
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->m:Z

    .line 15
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->g(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "FR_DETAILS_FAVORITES"

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0800a0

    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    .line 18
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {p1}, Lcom/c/swipe/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 12
    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->m:Z

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->m()V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    iget v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->l:I

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f0e002b

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rvFavorites:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b()V

    return-void
.end method

.method public e(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v2, "key_sort_by"

    invoke-static {v2, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->a(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->g:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a003c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;->a()V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {v0}, Lcom/c/swipe/a/a;->a()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/adapter/FavoritesAdapter;->b()V

    .line 3
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    .line 3
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->n()V

    return-void
.end method

.method public showAdsGift()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800be
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    return-void
.end method

.method public sortFavoriteQRCode()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d2
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->ivSortFavorites:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->a(Landroid/view/View;)V

    return-void
.end method

.method public templeClick()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801a8
        }
    .end annotation

    return-void
.end method
