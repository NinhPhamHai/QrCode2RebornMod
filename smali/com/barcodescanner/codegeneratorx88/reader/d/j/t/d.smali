.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;


# instance fields
.field etInputText:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08007e
    .end annotation
.end field

.field private g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

.field private h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

.field private i:Landroid/content/Context;

.field ivSaveQRText:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field tvNumberText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080187
    .end annotation
.end field

.field viewBackCreate:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801a3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x273d2d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method backTextCreate()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801a3
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/g/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_1
    :goto_0
    return-void
.end method

.method changeNumberText()V
    .locals 3
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f08007e
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->tvNumberText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    rsub-int v2, v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method createQREncodeText()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmGet$text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a007e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->i:Landroid/content/Context;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->i:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->k()V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/t/d;->etInputText:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
