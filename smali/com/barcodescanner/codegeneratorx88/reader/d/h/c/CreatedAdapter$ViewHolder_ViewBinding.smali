.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    .line 3
    const-class v0, Lcom/c/swipe/SwipeLayout;

    const v1, 0x7f08015f

    const-string v2, "field \'swipeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/swipe/SwipeLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->swipeLayout:Lcom/c/swipe/SwipeLayout;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800d4

    const-string v2, "field \'ivThumbnailItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->ivThumbnailItem:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080195

    const-string v2, "field \'tvTitleItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->tvTitleItem:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080180

    const-string v2, "field \'tvDateTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->tvDateTime:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c1

    const-string v2, "field \'ivDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800e8

    const-string v2, "field \'llDetailsItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->llDetailsItem:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->swipeLayout:Lcom/c/swipe/SwipeLayout;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->ivThumbnailItem:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->tvTitleItem:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->tvDateTime:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/CreatedAdapter$ViewHolder;->llDetailsItem:Landroid/view/ViewGroup;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
