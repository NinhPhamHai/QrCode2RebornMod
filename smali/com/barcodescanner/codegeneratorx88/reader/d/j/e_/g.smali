.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/f;


# instance fields
.field etInputMessageEmail:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08007c
    .end annotation
.end field

.field etSubjectEmail:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080089
    .end annotation
.end field

.field etToEmail:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08008b
    .end annotation
.end field

.field private g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

.field private h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

.field private i:Landroid/content/Context;

.field ivAddEmail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800bd
    .end annotation
.end field

.field ivSaveQREmail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tvNumberTextEmail:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080188
    .end annotation
.end field

.field viewBackCreateEmail:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801a3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x70c11a2a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x448a1ef4

    if-eq v0, v1, :cond_1

    const v1, 0x3f0537c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EMAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "SUBJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "INPUT_MASSAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5
    :cond_5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method addEmail()V
    .locals 9
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800bd
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.google"

    aput-object v1, v3, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x384

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method backEmailCreate()V
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

.method changeTextMessage()V
    .locals 3
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f08007c
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->tvNumberTextEmail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    rsub-int v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method createQRCode()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/utility/UtilsLib;->validateEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    invoke-virtual {v2, v3, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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

    const-string v1, "QR_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 4
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$tos()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etSubjectEmail:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$subject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$subject()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etInputMessageEmail:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$body()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmGet$body()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/a;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x384

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "authAccount"

    .line 1
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->etToEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a0079

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->i:Landroid/content/Context;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->i:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->l()V

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->k()V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e_/g;->l()V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method
