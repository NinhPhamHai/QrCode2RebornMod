.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    .line 3
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f08012f

    const-string v2, "field \'rvCreatedQRCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rvCreatedQRCode:Landroid/support/v7/widget/RecyclerView;

    .line 4
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08012c

    const-string v2, "field \'rlEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    .line 5
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f080098

    const-string v2, "field \'frContainerAds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->frContainerAds:Landroid/widget/FrameLayout;

    const v0, 0x7f080036

    const-string v1, "method \'onBack\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/h;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003a

    const-string v1, "method \'onDelete\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/i;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rvCreatedQRCode:Landroid/support/v7/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->rlEmptyView:Landroid/widget/RelativeLayout;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;->frContainerAds:Landroid/widget/FrameLayout;

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->b:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
