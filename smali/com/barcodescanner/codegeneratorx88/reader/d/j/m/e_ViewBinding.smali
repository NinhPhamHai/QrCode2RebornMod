.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;

.field private b:Landroid/view/View;

.field private c:Landroid/text/TextWatcher;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f08007d

    const-string v2, "field \'etInputPhoneMessage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->etInputPhoneMessage:Landroid/widget/EditText;

    const v0, 0x7f08008c

    const-string v1, "field \'etContentMessage\' and method \'changeTextMessage\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'etContentMessage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->etContentMessage:Landroid/widget/EditText;

    .line 6
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/a;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->c:Landroid/text/TextWatcher;

    .line 8
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->c:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQRMessage\' and method \'createQRCode\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQRMessage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->ivSaveQRMessage:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->d:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a3

    const-string v1, "field \'viewBackCreateMessage\' and method \'backMessageCreate\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewBackCreateMessage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->viewBackCreateMessage:Landroid/view/ViewGroup;

    .line 15
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/c;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080189

    const-string v2, "field \'tvNumberEvent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->tvNumberEvent:Landroid/widget/TextView;

    const v0, 0x7f0800cf

    const-string v1, "field \'ivRowAddMessage\' and method \'addPhoneNumber\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 19
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivRowAddMessage\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->ivRowAddMessage:Landroid/widget/ImageView;

    .line 20
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/d;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->etInputPhoneMessage:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->etContentMessage:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->ivSaveQRMessage:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->viewBackCreateMessage:Landroid/view/ViewGroup;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->tvNumberEvent:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e;->ivRowAddMessage:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->c:Landroid/text/TextWatcher;

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->b:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/m/e_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
