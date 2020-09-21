.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;",
            ">;",
            "Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;)Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;

    .line 3
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->ivCreate:Landroid/widget/ImageView;

    iget v1, p2, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->tvTitleCreate:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->viewGroupItemCreate:Landroid/view/ViewGroup;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;

    invoke-direct {v1, p0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/a/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;->viewGroupItemCreate:Landroid/view/ViewGroup;

    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/b;

    invoke-direct {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;

    invoke-virtual {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0041

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;

    invoke-direct {p2, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter$ListCreateHolder;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/adapter/ListCreateAdapter;Landroid/view/View;)V

    return-object p2
.end method
