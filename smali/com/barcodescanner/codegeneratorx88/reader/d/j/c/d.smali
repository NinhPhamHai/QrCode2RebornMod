.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field etAddressContact:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080078
    .end annotation
.end field

.field etEmailContact:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08007a
    .end annotation
.end field

.field etFirstNameContact:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08007b
    .end annotation
.end field

.field etLastNameContact:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080080
    .end annotation
.end field

.field etPhoneContact:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080085
    .end annotation
.end field

.field frImportContact:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08009d
    .end annotation
.end field

.field private h:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

.field private i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

.field ivSaveQRCodeContact:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;-><init>()V

    return-void
.end method

.method private l()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "LAST_NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "FIRST_NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "PHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "EMAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "ADDRESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 12
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x199cd82c -> :sswitch_4
        0x3f0537c -> :sswitch_3
        0x489454e -> :sswitch_2
        0x15146ada -> :sswitch_1
        0x1fd8ce94 -> :sswitch_0
    .end sparse-switch
.end method

.method backContactCreate()V
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

.method public contactTask()V
    .locals 3
    .annotation runtime Lf/devrel/easypermissions/a;
        value = 0x73
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7c

    .line 2
    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->g:[Ljava/lang/String;

    const-string v2, "TODO: Location things"

    invoke-static {p0, v2, v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method createQRCode()V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual/range {v1 .. v6}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "QR_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 6
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$email()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$email()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$phone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->i:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$phone()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x4

    .line 2
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "data1"

    aput-object v7, v3, v0

    const/4 v0, 0x1

    const-string v8, "display_name"

    aput-object v8, v3, v0

    const/4 v0, 0x2

    aput-object v8, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etAddressContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etPhoneContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_1

    .line 17
    invoke-static {v4}, Lcom/utility/UtilsLib;->validateEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etEmailContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a0078

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->k()V

    .line 7
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etLastNameContact:Landroid/widget/AutoCompleteTextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->h:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a()V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause"

    .line 1
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/c/d;->etFirstNameContact:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop"

    .line 1
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method openContactFromSystem()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08009d
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x6e

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
