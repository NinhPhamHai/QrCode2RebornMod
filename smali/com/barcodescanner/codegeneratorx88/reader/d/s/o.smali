.class public Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/a/c/a/a;


# static fields
.field public static f:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;


# instance fields
.field private g:Landroid/content/Context;

.field mLayoutSound:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800da
    .end annotation
.end field

.field mLayoutVibrate:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800db
    .end annotation
.end field

.field mTgSound:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08016b
    .end annotation
.end field

.field mTgVibrate:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08016c
    .end annotation
.end field

.field mTvVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08019a
    .end annotation
.end field

.field tvVersionSettings:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08019b
    .end annotation
.end field

.field viewFeedBack:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801a5
    .end annotation
.end field

.field viewGetProVersion:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801a6
    .end annotation
.end field

.field viewMoreApp:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801ae
    .end annotation
.end field

.field viewRateApp:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801b3
    .end annotation
.end field

.field viewShareApp:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0801b4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;-><init>()V

    return-void
.end method

.method public static k()Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a0040

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sput-object p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->tvVersionSettings:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget-boolean p2, Lcom/barcodescanner/codegeneratorx88/reader/a;->a:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewGetProVersion:Landroid/view/ViewGroup;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    const-string v0, "key_sound_enable"

    invoke-static {v0, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result p2

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgSound:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 10
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgSound:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/a;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string v0, "key_vibrate_enable"

    invoke-static {v0, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result p2

    .line 12
    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgVibrate:Landroid/widget/ToggleButton;

    invoke-virtual {p3, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 13
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgVibrate:Landroid/widget/ToggleButton;

    new-instance p3, Lcom/barcodescanner/codegeneratorx88/reader/d/s/b;

    invoke-direct {p3, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {p2, p3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mLayoutSound:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/barcodescanner/codegeneratorx88/reader/d/s/c;

    invoke-direct {p3, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mLayoutVibrate:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/barcodescanner/codegeneratorx88/reader/d/s/d;

    invoke-direct {p3, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTvVersion:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method onFeedBack()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801a5
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method onGetProVersion()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801a6
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method onMoreApp()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801ae
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method onRateApp()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801b3
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method onShareApp()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801b4
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method onShowDialogPermission()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801b1
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->g:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/h;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method templeClick()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800e7
        }
    .end annotation

    return-void
.end method
