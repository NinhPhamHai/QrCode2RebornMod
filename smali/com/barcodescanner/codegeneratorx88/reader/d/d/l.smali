.class public Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/f;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;


# instance fields
.field private b:Landroid/content/Context;

.field btnActionQREntity:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080032
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;

.field private e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

.field private f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field ivActionButtonBackground:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800ca
    .end annotation
.end field

.field ivFavorite:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800cb
    .end annotation
.end field

.field ivNoFavorite:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800cc
    .end annotation
.end field

.field ivQRDetailsAction:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c9
    .end annotation
.end field

.field ivQRType:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c8
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Z

.field public l:Z

.field llActionQREntityText:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800eb
    .end annotation
.end field

.field private m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

.field rvQRDetails:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080133
    .end annotation
.end field

.field tvQRDetailsAction:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08018e
    .end annotation
.end field

.field tvQRDetailsTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080190
    .end annotation
.end field

.field tvQRDetailsTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08018f
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080197
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g:Ljava/util/ArrayList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->h:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->i:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->k:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->l:Z

    .line 8
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;

    .line 10
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e()V

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;)Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;

    return-object p0
.end method

.method private i()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->i(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private j()V
    .locals 4

    .line 1
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    .line 2
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->rvQRDetails:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->rvQRDetails:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->rvQRDetails:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->rvQRDetails:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->closeDetailsView()V

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    const/16 p2, 0x3e9

    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, v0

    if-nez p1, :cond_6

    .line 4
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->i()Z

    .line 5
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object p1

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    goto :goto_0

    .line 7
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->actionQREntity()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    const p2, 0x7f0e0066

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_4
    array-length p1, p3

    if-lez p1, :cond_5

    aget p1, p3, v0

    if-nez p1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->actionQREntity()V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    const p2, 0x7f0e006b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method actionQREntity()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080032
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_TELEPHONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->f(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_PRODUCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c()V

    .line 19
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    .line 20
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_6

    .line 23
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$body()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$numbers()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    const v4, 0x7f0e0067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/utility/UtilsLib;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_7

    .line 26
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;DD)V

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_8

    .line 29
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$subject()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$body()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/utility/UtilsLib;->callEmailApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_a

    .line 32
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->i()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 33
    :cond_9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V

    :cond_a
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->a()V

    .line 2
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/f;->c()V

    return-void
.end method

.method closeDetailsView()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080038
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->g:Z

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/f;->b()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/e;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/f;->d()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->g:Z

    .line 4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->c:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->c:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-virtual {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method favoriteQREntity()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08003f
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->k:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->k:Z

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g()V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivFavorite:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivNoFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivNoFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivQRDetailsAction:Landroid/widget/ImageView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivActionButtonBackground:Landroid/widget/ImageView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->tvQRDetailsAction:Landroid/widget/TextView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method sendEmailFromQRText()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080031
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v2, v2, v1}, Lcom/utility/UtilsLib;->callEmailApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method sendSMSFromQRText()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080035
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2, v2}, Lcom/utility/UtilsLib;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDataForViews(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    invoke-virtual {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->g:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    .line 4
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->h:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->i:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$favorite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->k:Z

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->ivQRType:Landroid/widget/ImageView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->tvQRDetailsTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->tvTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->tvQRDetailsTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g()V

    .line 14
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->h()V

    .line 15
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g:Ljava/util/ArrayList;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    if-nez p1, :cond_1

    .line 18
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j()V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v0, "QR_TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->llActionQREntityText:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->btnActionQREntity:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->llActionQREntityText:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->btnActionQREntity:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v0, "QR_PRODUCT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->l:Z

    if-eqz p1, :cond_4

    .line 26
    iput-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->l:Z

    .line 27
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/utility/UtilsLib;->isNetworkConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    const v0, 0x7f0e0069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setDataProductSearched(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->g:Ljava/util/ArrayList;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/d/adapter/QREntityDetailsAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method shareQREntity()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080042
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_TELEPHONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_PRODUCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_5

    .line 18
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_6

    .line 21
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_7

    .line 24
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_8

    .line 27
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    const-string v1, "QR_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->m:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    if-eqz v0, :cond_9

    .line 30
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$raw_data()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
