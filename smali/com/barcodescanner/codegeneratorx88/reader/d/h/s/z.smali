.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/w;
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;


# static fields
.field public static f:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static g:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;


# instance fields
.field frContainerAds:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080098
    .end annotation
.end field

.field frQRDetails:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800a1
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

.field ivAdsGift:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800bf
    .end annotation
.end field

.field ivDeleteAll:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c0
    .end annotation
.end field

.field ivDeleteItemSelected:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c2
    .end annotation
.end field

.field ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d1
    .end annotation
.end field

.field ivSortListHistory:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d3
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

.field private k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

.field private l:Z

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

.field private n:Z

.field private o:I

.field private p:Lcom/google/android/gms/ads/AdView;

.field rlEmptyView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08012c
    .end annotation
.end field

.field rvListHistory:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080132
    .end annotation
.end field

.field viewGroupHistory:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801a9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->m:Z

    .line 5
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    .line 6
    sget v0, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o:I

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 9

    .line 22
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f080125

    .line 25
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    const v3, 0x7f080126

    .line 26
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const v4, 0x7f080128

    .line 27
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v5, 0x7f080127

    .line 28
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 29
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v8, "key_sort_by"

    invoke-static {v8, v6, v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v6

    .line 30
    sget v7, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    if-ne v6, v7, :cond_0

    .line 31
    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 32
    :cond_0
    sget v3, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->b:I

    if-ne v6, v3, :cond_1

    .line 33
    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 35
    :goto_0
    new-instance v3, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;

    invoke-direct {v3, p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/o;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x35

    .line 37
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 40
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 41
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 45
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->l()I

    move-result v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 47
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static k()Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

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

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e007c

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0075

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/m;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    const v2, 0x7f0e007a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/n;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/n;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    const v2, 0x7f0e0074

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e007c

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e007d

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/k;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    const v2, 0x7f0e007a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/l;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/l;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    const v2, 0x7f0e0074

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o:I

    .line 24
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->c(I)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v1, "key_sort_by"

    invoke-static {v1, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o:I

    .line 8
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->j:Ljava/util/List;

    iget v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o:I

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;)V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 12
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    sget-object v0, Lcom/c/swipe/d/a;->a:Lcom/c/swipe/d/a;

    invoke-virtual {p1, v0}, Lcom/c/swipe/a/a;->a(Lcom/c/swipe/d/a;)V

    .line 13
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o:I

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a(I)V

    .line 14
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/g;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 15
    sget-object p1, Lcom/barcodescanner/codegeneratorx88/reader/b/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->c(Z)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/h;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mEdtSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/i;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mEdtSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/j;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    sput-object p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "reloadData"

    .line 2
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a()V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->m:Z

    return-void
.end method

.method public b(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o:I

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b(I)V

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteItemSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    const v0, 0x7f0700a8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rlEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {p1, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Z)V

    .line 13
    iput-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    .line 14
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->m()V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rlEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    .line 51
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->selectToDelete()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 12
    sget v0, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    if-ne p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->h()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->i()V

    :goto_0
    return-void
.end method

.method public c(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 4

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->m:Z

    .line 7
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->g(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "FR_DETAILS_HISTORY"

    const v3, 0x7f0800a1

    .line 9
    invoke-static {p1, v1, v2, v0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a()V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->m:Z

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivAdsGift:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    return-void
.end method

.method public deleteAll()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800c0
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->o()V

    return-void
.end method

.method public deleteItemSelected()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800c2
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e007b

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->p()V

    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/utility/UtilsLib;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->p:Lcom/google/android/gms/ads/AdView;

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->h:Landroid/content/Context;

    const v1, 0x7f0e0104

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->frContainerAds:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->p:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    const-string v2, "key_sort_by"

    invoke-static {v2, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->l:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a003d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;->a()V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b()V

    .line 3
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->h:Landroid/content/Context;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/y;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Landroid/view/View;)V

    return-void
.end method

.method public selectToDelete()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d1
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget-boolean v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    invoke-virtual {v0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    const v3, 0x7f0700a8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteItemSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;

    iget-boolean v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n:Z

    invoke-virtual {v0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Z)V

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    const v3, 0x7f0700ac

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteItemSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showAdsGift()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800bf
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

.method public sortListQRCode()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d3
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSortListHistory:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->b(Landroid/view/View;)V

    return-void
.end method

.method public templeClick()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08009b
        }
    .end annotation

    return-void
.end method
