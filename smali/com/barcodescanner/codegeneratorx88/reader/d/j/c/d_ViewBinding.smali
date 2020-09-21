.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;

    const v0, 0x7f0800d0

    const-string v1, "field \'ivSaveQRCodeContact\' and method \'createQRCode\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivSaveQRCodeContact\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->ivSaveQRCodeContact:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/a;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f08007b

    const-string v2, "field \'etFirstNameContact\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    .line 8
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080080

    const-string v2, "field \'etLastNameContact\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    .line 9
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080078

    const-string v2, "field \'etAddressContact\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    .line 10
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080085

    const-string v2, "field \'etPhoneContact\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    .line 11
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f08007a

    const-string v2, "field \'etEmailContact\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f08009d

    const-string v1, "field \'frImportContact\' and method \'openContactFromSystem\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'frImportContact\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->frImportContact:Landroid/view/ViewGroup;

    .line 14
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->c:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/b;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a3

    const-string v1, "method \'backContactCreate\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/c;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->ivSaveQRCodeContact:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->frImportContact:Landroid/view/ViewGroup;

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->b:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
