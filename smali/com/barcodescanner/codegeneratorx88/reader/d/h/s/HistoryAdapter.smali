.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;
.super Lcom/c/swipe/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/swipe/a/a<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

.field private f:I

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;I",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/c/swipe/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    .line 4
    sget v0, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->f:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->g:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c:Ljava/util/List;

    .line 9
    iput p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->f:I

    .line 10
    iput-object p4, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->e:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/v;

    return-object p0
.end method

.method private a(ILcom/c/swipe/SwipeLayout;)V
    .locals 2

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e007c

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e00bc

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 52
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;ILcom/c/swipe/SwipeLayout;)V

    const p1, 0x7f0e007a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e0074

    const/4 p2, 0x0

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;I)V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 38
    iget-object v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 39
    iget-object v3, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v3, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v3, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_2
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p3, v0, :cond_3

    goto :goto_3

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    add-int/2addr p3, v2

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 46
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    .line 47
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 48
    :cond_5
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;ILcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(ILcom/c/swipe/SwipeLayout;)V

    return-void
.end method

.method private b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 17
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_1

    .line 23
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_1
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 6
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v4

    iget-object v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v6}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p3, v2, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    add-int/2addr p3, v1

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 14
    invoke-virtual {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    .line 15
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 16
    :cond_5
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const p1, 0x7f08015f

    return p1
.end method

.method public a()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {v0}, Lcom/c/swipe/b/a;->a()V

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;I)V
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 8
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvGroupHistory:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->viewLineHistory:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llContainerAds:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivItemSelected:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->mBottomBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvTitleItem:Landroid/widget/TextView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->tvDateTimeHistory:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$created()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivThumbnailItemHistory:Landroid/widget/ImageView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivItemSelected:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_0
    iget v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->f:I

    sget v2, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->a:I

    if-ne v1, v2, :cond_1

    .line 19
    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;I)V

    goto :goto_0

    .line 20
    :cond_1
    sget v2, Lcom/barcodescanner/codegeneratorx88/reader/b/f;->b:I

    if-ne v1, v2, :cond_2

    .line 21
    invoke-direct {p0, p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;I)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;I)V

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$favorite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    const v2, 0x7f0700ec

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    const v2, 0x7f0700ea

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_1
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivDeleteHistory:Landroid/widget/ImageView;

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;

    invoke-direct {v2, p0, p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;ILcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->ivFavoriteHistory:Landroid/widget/ImageView;

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;

    invoke-direct {v2, p0, v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llDetailsItem:Landroid/view/ViewGroup;

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;

    invoke-direct {v2, p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->swipeLayoutHistory:Lcom/c/swipe/SwipeLayout;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V

    invoke-virtual {v0, v1}, Lcom/c/swipe/SwipeLayout;->a(Lcom/c/swipe/SwipeLayout$i;)V

    .line 30
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;->llDetailsItem:Landroid/view/ViewGroup;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lcom/c/swipe/b/b;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 14

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 60
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    .line 61
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v3

    .line 62
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v4

    .line 63
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v5

    .line 64
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    move-result-object v6

    .line 65
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    move-result-object v7

    .line 66
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    move-result-object v8

    .line 67
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v9

    .line 68
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    move-result-object v10

    .line 69
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$ccs()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$bccs()Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$subject()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 72
    invoke-virtual {v4}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v4}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$location()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v4}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v13

    .line 73
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v4}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 74
    invoke-virtual {v5}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$query()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v6, :cond_6

    .line 75
    invoke-virtual {v6}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$numbers()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v6}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$subject()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v6}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;->realmGet$body()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-eqz v7, :cond_8

    .line 76
    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$product_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$normalized_product_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$content()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$sscc()Ljava/lang/String;

    move-result-object v13

    .line 77
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$lotNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$productionDate()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$expirationDate()Ljava/lang/String;

    move-result-object v13

    .line 78
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$price()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmGet$priceCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    if-eqz v8, :cond_a

    .line 79
    invoke-virtual {v8}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$number()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v8}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$telURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v8}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;->realmGet$title()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-eqz v9, :cond_c

    .line 80
    invoke-virtual {v9}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v9}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$language()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    const/4 v9, 0x1

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    if-eqz v10, :cond_e

    .line 81
    invoke-virtual {v10}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$uri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v10}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;->realmGet$title()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    const/4 v10, 0x1

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    if-eqz v11, :cond_f

    .line 82
    invoke-virtual {v11}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$networkEncryption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v11}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v11}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$password()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    .line 83
    :cond_10
    :goto_9
    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$title()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    if-nez v3, :cond_11

    if-nez v4, :cond_11

    if-nez v5, :cond_11

    if-nez v6, :cond_11

    if-nez v7, :cond_11

    if-nez v8, :cond_11

    if-nez v9, :cond_11

    if-nez v10, :cond_11

    if-eqz v12, :cond_12

    .line 84
    :cond_11
    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 85
    :cond_13
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->g:Z

    .line 4
    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->g:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->f:I

    .line 3
    iget-object p1, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    invoke-virtual {p1}, Lcom/c/swipe/b/a;->a()V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0047

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;

    invoke-direct {p2, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter$HistoryHolder;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/HistoryAdapter;Landroid/view/View;)V

    return-object p2
.end method
