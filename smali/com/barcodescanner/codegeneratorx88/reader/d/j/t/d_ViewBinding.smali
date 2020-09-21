.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;

.field private b:Landroid/view/View;

.field private c:Landroid/text/TextWatcher;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;

    const v0, 0x7f08007e

    const-string v1, "field \'etInputText\' and method \'changeNumberText\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "field \'etInputText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    .line 5
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/a;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->c:Landroid/text/TextWatcher;

    .line 7
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->c:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQRText\' and method \'createQREncodeText\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQRText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->ivSaveQRText:Landroid/widget/ImageView;

    .line 10
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a3

    const-string v1, "field \'viewBackCreate\' and method \'backTextCreate\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewBackCreate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->viewBackCreate:Landroid/view/ViewGroup;

    .line 14
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->e:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/c;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080187

    const-string v2, "field \'tvNumberText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->tvNumberText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->ivSaveQRText:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->viewBackCreate:Landroid/view/ViewGroup;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->tvNumberText:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->c:Landroid/text/TextWatcher;

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->b:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
