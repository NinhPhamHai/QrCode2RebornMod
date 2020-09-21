.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;
.super Lcom/c/swipe/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/swipe/a/a<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/c/swipe/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/e;

    return-object p0
.end method

.method private a(ILcom/c/swipe/SwipeLayout;)V
    .locals 2

    .line 10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e007c

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e00bc

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 13
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;ILcom/c/swipe/SwipeLayout;)V

    const p1, 0x7f0e007a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/d;

    invoke-direct {p1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;)V

    const p2, 0x7f0e0074

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;ILcom/c/swipe/SwipeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(ILcom/c/swipe/SwipeLayout;)V

    return-void
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const p1, 0x7f08015f

    return p1
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;I)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    .line 4
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->tvTitleItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->tvDateTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$created()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->ivThumbnailItem:Landroid/widget/ImageView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;

    invoke-direct {v2, p0, p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;ILcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->llDetailsItem:Landroid/view/ViewGroup;

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;

    invoke-direct {v2, p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/c/swipe/a/a;->a:Lcom/c/swipe/b/b;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lcom/c/swipe/b/b;->a(Landroid/view/View;I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;
    .locals 3

    .line 2
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter;Landroid/view/View;)V

    return-object p2
.end method
