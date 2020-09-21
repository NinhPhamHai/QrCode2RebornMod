.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;


# static fields
.field public static f:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;


# instance fields
.field frCreateDetails:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08009c
    .end annotation
.end field

.field private g:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;

.field public j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

.field rvListCreate:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08012e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;-><init>()V

    return-void
.end method

.method public static k()Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->h:Ljava/util/List;

    .line 2
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->h:Ljava/util/List;

    invoke-direct {p1, v0, v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;)V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->rvListCreate:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->rvListCreate:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const v0, 0x7f0e0082

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f080052

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_EMAIL"

    .line 5
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_0
    const v0, 0x7f0e00c9

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/p/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/p/d;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 9
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_PHONE"

    .line 10
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_1
    const v0, 0x7f0e0097

    .line 11
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 14
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_MESSAGE"

    .line 15
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_2
    const v0, 0x7f0e0094

    .line 16
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 18
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 19
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_LOCATION"

    .line 20
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_3
    const v0, 0x7f0e0085

    .line 21
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 23
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 24
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_EVENT"

    .line 25
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_4
    const v0, 0x7f0e0076

    .line 26
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 28
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 29
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_CONTACT"

    .line 30
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_5
    const v0, 0x7f0e00ca

    .line 31
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 33
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 34
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_TEXT"

    .line 35
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_6
    const v0, 0x7f0e00d6

    .line 36
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 38
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 39
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "FR_WIFI"

    .line 40
    invoke-static {v0, v2, v4, v3, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_7
    const v0, 0x7f0e00cf

    .line 41
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 42
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;

    invoke-direct {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;-><init>()V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 43
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    .line 44
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->k()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "FR_WEBSITE"

    .line 45
    invoke-static {p1, v2, v3, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    :cond_8
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a003a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/a;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->a(Landroid/view/View;)V

    return-void
.end method

.method openCreatedQRHistory()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08003e
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method templeClick()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080099
        }
    .end annotation

    return-void
.end method
