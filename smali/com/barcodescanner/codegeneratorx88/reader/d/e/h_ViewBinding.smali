.class public Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800cd

    const-string v2, "field \'ivQREncode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->ivQREncode:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800ce

    const-string v2, "field \'ivQRTypeEncode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->ivQRTypeEncode:Landroid/widget/ImageView;

    const v0, 0x7f080039

    const-string v1, "field \'viewCloseEncode\' and method \'closeDetailsEncode\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'viewCloseEncode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->viewCloseEncode:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/a;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080198

    const-string v2, "field \'tvTitleEncode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTitleEncode:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080191

    const-string v2, "field \'tvTimeEncode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTimeEncode:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08018d

    const-string v2, "field \'tvContentEncode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvContentEncode:Landroid/widget/TextView;

    const v0, 0x7f08003e

    const-string v1, "field \'btnOpenCreatedQRHistory\' and method \'openCreatedQRHistory\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'btnOpenCreatedQRHistory\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnOpenCreatedQRHistory:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->c:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003b

    const-string v1, "field \'btnEditCreatedQR\' and method \'editCreatedQR\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'btnEditCreatedQR\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnEditCreatedQR:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/c;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080033

    const-string v1, "field \'btnSaveCreatedQR\' and method \'actionSaveQREncode\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'btnSaveCreatedQR\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnSaveCreatedQR:Landroid/widget/FrameLayout;

    .line 22
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->e:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080034

    const-string v1, "method \'actionShareQREncode\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->f:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/e;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->ivQREncode:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->ivQRTypeEncode:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->viewCloseEncode:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTitleEncode:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTimeEncode:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvContentEncode:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnOpenCreatedQRHistory:Landroid/widget/LinearLayout;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnEditCreatedQR:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnSaveCreatedQR:Landroid/widget/FrameLayout;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->b:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
