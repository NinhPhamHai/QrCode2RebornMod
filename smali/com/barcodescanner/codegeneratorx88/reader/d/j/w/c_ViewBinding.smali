.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;

    .line 3
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f08007f

    const-string v2, "field \'etInputUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;->etInputUrl:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQrUrl\' and method \'createQREncodeWeb\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQrUrl\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;->ivSaveQrUrl:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/a;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a3

    const-string v1, "field \'viewBackCreate\' and method \'backWebsiteCreate\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "field \'viewBackCreate\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;->viewBackCreate:Landroid/view/ViewGroup;

    .line 10
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;->etInputUrl:Landroid/widget/AutoCompleteTextView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;->ivSaveQrUrl:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c;->viewBackCreate:Landroid/view/ViewGroup;

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->b:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w/c_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
