.class public Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.source "SourceFile"


# static fields
.field public static f:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;-><init>()V

    return-void
.end method

.method public static l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->f:Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    return-object v0
.end method


# virtual methods
.method public k()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0a003e

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FR_LIST_CREATE"

    const v2, 0x7f080052

    .line 4
    invoke-static {p2, p3, v1, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V

    return-object p1
.end method
