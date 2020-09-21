.class public Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    const v0, 0x7f0801a5

    const-string v1, "field \'viewFeedBack\' and method \'onFeedBack\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewFeedBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewFeedBack:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/e;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801b3

    const-string v1, "field \'viewRateApp\' and method \'onRateApp\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewRateApp\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewRateApp:Landroid/view/ViewGroup;

    .line 9
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/f;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801b4

    const-string v1, "field \'viewShareApp\' and method \'onShareApp\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewShareApp\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewShareApp:Landroid/view/ViewGroup;

    .line 13
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/g;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a6

    const-string v1, "field \'viewGetProVersion\' and method \'onGetProVersion\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewGetProVersion\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewGetProVersion:Landroid/view/ViewGroup;

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/h;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801ae

    const-string v1, "field \'viewMoreApp\' and method \'onMoreApp\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'viewMoreApp\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewMoreApp:Landroid/view/ViewGroup;

    .line 21
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->f:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/i;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08019b

    const-string v2, "field \'tvVersionSettings\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->tvVersionSettings:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/ToggleButton;

    const v1, 0x7f08016b

    const-string v2, "field \'mTgSound\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgSound:Landroid/widget/ToggleButton;

    .line 25
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800da

    const-string v2, "field \'mLayoutSound\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mLayoutSound:Landroid/widget/LinearLayout;

    .line 26
    const-class v0, Landroid/widget/ToggleButton;

    const v1, 0x7f08016c

    const-string v2, "field \'mTgVibrate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgVibrate:Landroid/widget/ToggleButton;

    .line 27
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800db

    const-string v2, "field \'mLayoutVibrate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mLayoutVibrate:Landroid/widget/LinearLayout;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08019a

    const-string v2, "field \'mTvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTvVersion:Landroid/widget/TextView;

    const v0, 0x7f0801b1

    const-string v1, "method \'onShowDialogPermission\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->g:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/s/j;

    invoke-direct {v1, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/j;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e7

    const-string v1, "method \'templeClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->h:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/k;

    invoke-direct {v0, p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/s/k;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;

    .line 3
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewFeedBack:Landroid/view/ViewGroup;

    .line 4
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewRateApp:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewShareApp:Landroid/view/ViewGroup;

    .line 6
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewGetProVersion:Landroid/view/ViewGroup;

    .line 7
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->viewMoreApp:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->tvVersionSettings:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgSound:Landroid/widget/ToggleButton;

    .line 10
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mLayoutSound:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTgVibrate:Landroid/widget/ToggleButton;

    .line 12
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mLayoutVibrate:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o;->mTvVersion:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->b:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->c:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->d:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->e:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->f:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->g:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/s/o_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
