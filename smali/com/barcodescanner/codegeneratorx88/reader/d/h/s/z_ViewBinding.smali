.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    const v0, 0x7f0800c0

    const-string v1, "field \'ivDeleteAll\' and method \'deleteAll\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivDeleteAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteAll:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/p;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/p;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c2

    const-string v1, "field \'ivDeleteItemSelected\' and method \'deleteItemSelected\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivDeleteItemSelected\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteItemSelected:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/q;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/q;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bf

    const-string v1, "field \'ivAdsGift\' and method \'showAdsGift\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAdsGift\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivAdsGift:Landroid/widget/ImageView;

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/r;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/r;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800d3

    const-string v1, "field \'ivSortListHistory\' and method \'sortListQRCode\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSortListHistory\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSortListHistory:Landroid/widget/ImageView;

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/s;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/s;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800d1

    const-string v1, "field \'ivSelectToDelete\' and method \'selectToDelete\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/support/v7/widget/AppCompatImageView;

    const-string v3, "field \'ivSelectToDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    .line 21
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->f:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/t;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/t;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f080132

    const-string v2, "field \'rvListHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    .line 24
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0800a1

    const-string v2, "field \'frQRDetails\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->frQRDetails:Landroid/widget/FrameLayout;

    .line 25
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0801a9

    const-string v2, "field \'viewGroupHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->viewGroupHistory:Landroid/view/ViewGroup;

    .line 26
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08012c

    const-string v2, "field \'rlEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rlEmptyView:Landroid/widget/RelativeLayout;

    .line 27
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f080098

    const-string v2, "field \'frContainerAds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->frContainerAds:Landroid/widget/FrameLayout;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800b7

    const-string v2, "field \'mImgCloseSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f080073

    const-string v2, "field \'mEdtSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mEdtSearch:Landroid/widget/EditText;

    const v0, 0x7f08009b

    const-string v1, "method \'templeClick\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->g:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/u;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/u;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteAll:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivDeleteItemSelected:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivAdsGift:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSortListHistory:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->ivSelectToDelete:Landroid/support/v7/widget/AppCompatImageView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rvListHistory:Landroid/support/v7/widget/RecyclerView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->frQRDetails:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->viewGroupHistory:Landroid/view/ViewGroup;

    .line 11
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->rlEmptyView:Landroid/widget/RelativeLayout;

    .line 12
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->frContainerAds:Landroid/widget/FrameLayout;

    .line 13
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mImgCloseSearch:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->mEdtSearch:Landroid/widget/EditText;

    .line 15
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->b:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->c:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->d:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->e:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->f:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
