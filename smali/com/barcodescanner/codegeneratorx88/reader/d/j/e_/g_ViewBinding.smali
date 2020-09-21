.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

.field private b:Landroid/view/View;

.field private c:Landroid/text/TextWatcher;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

    .line 3
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f08008b

    const-string v2, "field \'etToEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    .line 4
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080089

    const-string v2, "field \'etSubjectEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f08007c

    const-string v1, "field \'etInputMessageEmail\' and method \'changeTextMessage\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "field \'etInputMessageEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    .line 7
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->c:Landroid/text/TextWatcher;

    .line 9
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->c:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQREmail\' and method \'createQRCode\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQREmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->ivSaveQREmail:Landroid/widget/ImageView;

    .line 12
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/c;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bd

    const-string v1, "field \'ivAddEmail\' and method \'addEmail\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAddEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->ivAddEmail:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/d;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a3

    const-string v1, "field \'viewBackCreateEmail\' and method \'backEmailCreate\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewBackCreateEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->viewBackCreateEmail:Landroid/view/ViewGroup;

    .line 20
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/e;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080188

    const-string v2, "field \'tvNumberTextEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->tvNumberTextEmail:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->ivSaveQREmail:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->ivAddEmail:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->viewBackCreateEmail:Landroid/view/ViewGroup;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->tvNumberTextEmail:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->c:Landroid/text/TextWatcher;

    .line 12
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->b:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->e:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
