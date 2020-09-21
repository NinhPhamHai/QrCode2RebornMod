.class public Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080197

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080190

    const-string v2, "field \'tvQRDetailsTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvQRDetailsTime:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018f

    const-string v2, "field \'tvQRDetailsTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvQRDetailsTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c8

    const-string v2, "field \'ivQRType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivQRType:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800ca

    const-string v2, "field \'ivActionButtonBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivActionButtonBackground:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c9

    const-string v2, "field \'ivQRDetailsAction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivQRDetailsAction:Landroid/widget/ImageView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018e

    const-string v2, "field \'tvQRDetailsAction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvQRDetailsAction:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800cc

    const-string v2, "field \'ivNoFavorite\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivNoFavorite:Landroid/widget/ImageView;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800cb

    const-string v2, "field \'ivFavorite\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivFavorite:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f080133

    const-string v2, "field \'rvQRDetails\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->rvQRDetails:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f080032

    const-string v1, "field \'btnActionQREntity\' and method \'actionQREntity\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 14
    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->btnActionQREntity:Landroid/view/View;

    .line 15
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->b:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800eb

    const-string v2, "field \'llActionQREntityText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->llActionQREntityText:Landroid/widget/LinearLayout;

    const v0, 0x7f0800a2

    const-string v1, "field \'viewQRDetails\' and method \'onClickDetails\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewQRDetails\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->viewQRDetails:Landroid/view/ViewGroup;

    .line 20
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->c:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/d;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080038

    const-string v1, "method \'closeDetailsView\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->d:Landroid/view/View;

    .line 24
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/e;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080031

    const-string v1, "method \'sendEmailFromQRText\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->e:Landroid/view/View;

    .line 27
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/f;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080035

    const-string v1, "method \'sendSMSFromQRText\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->f:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/g;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080042

    const-string v1, "method \'shareQREntity\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->g:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/h/h;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003f

    const-string v1, "method \'favoriteQREntity\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->h:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/i;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvQRDetailsTime:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvQRDetailsTitle:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivQRType:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivActionButtonBackground:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivQRDetailsAction:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->tvQRDetailsAction:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivNoFavorite:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->ivFavorite:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->rvQRDetails:Landroid/support/v7/widget/RecyclerView;

    .line 13
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->btnActionQREntity:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->llActionQREntityText:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k;->viewQRDetails:Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->b:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->c:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->d:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->e:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->f:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->g:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/h/k_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
