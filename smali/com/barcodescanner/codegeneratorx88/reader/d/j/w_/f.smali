.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;


# instance fields
.field etPasswordWifi:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080084
    .end annotation
.end field

.field etSSIDWifi:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080088
    .end annotation
.end field

.field private g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

.field private h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

.field private i:Landroid/content/Context;

.field ivQREncodeWifi:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field tvWifiFirst:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08019d
    .end annotation
.end field

.field tvWifiSecond:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08019e
    .end annotation
.end field

.field tvWifiThird:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08019f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x70ec3047

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x2c12e1c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PASSWORD_WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ID_WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0050

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method backWifiCreate()V
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

.method chooseFirstWifi()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08019d
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    const v1, 0x7f070144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    const v1, 0x7f0500e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0137

    .line 7
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    return-void
.end method

.method chooseSecondWifi()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08019e
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    const v1, 0x7f050037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    const v1, 0x7f0500e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0136

    .line 7
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    return-void
.end method

.method chooseThirdWifi()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08019f
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    const v1, 0x7f0500e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiFirst:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->tvWifiThird:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    return-void
.end method

.method createQREncodeWifi()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "QR_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 3
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "\""

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etPasswordWifi:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$password()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$password()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$networkEncryption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    const v1, 0x7f0e0137

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->chooseFirstWifi()V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->j:Ljava/lang/String;

    const v1, 0x7f0e0136

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->chooseSecondWifi()V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->chooseThirdWifi()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a0080

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->i:Landroid/content/Context;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->i:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->l()V

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->k()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a()V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/w_/f;->etSSIDWifi:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
