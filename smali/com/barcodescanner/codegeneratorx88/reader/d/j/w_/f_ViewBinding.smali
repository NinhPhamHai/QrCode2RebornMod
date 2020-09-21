.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;

    const v0, 0x7f0800d0

    const-string v1, "field \'ivQREncodeWifi\' and method \'createQREncodeWifi\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivQREncodeWifi\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->ivQREncodeWifi:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/a;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08019d

    const-string v1, "field \'tvWifiFirst\' and method \'chooseFirstWifi\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvWifiFirst\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08019e

    const-string v1, "field \'tvWifiSecond\' and method \'chooseSecondWifi\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvWifiSecond\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/c;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08019f

    const-string v1, "field \'tvWifiThird\' and method \'chooseThirdWifi\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvWifiThird\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/d;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080088

    const-string v2, "field \'etSSIDWifi\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    .line 20
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080084

    const-string v2, "field \'etPasswordWifi\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0801a3

    const-string v1, "method \'backWifiCreate\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->f:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/e;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->ivQREncodeWifi:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->b:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->e:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
