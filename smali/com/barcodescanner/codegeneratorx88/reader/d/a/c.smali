.class public abstract Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/barcodescanner/codegeneratorx88/reader/d/a/c$a;
    }
.end annotation


# static fields
.field public static a:Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;


# instance fields
.field private b:Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

.field private c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

.field private d:Lcom/barcodescanner/codegeneratorx88/reader/d/g/d;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/b;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/d/g/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/g/d;

    return-void
.end method

.method public b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->d:Lcom/barcodescanner/codegeneratorx88/reader/d/g/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/g/d;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 0

    return-void
.end method

.method public g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    return-object v0
.end method

.method public h()Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    return-object v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    .line 4
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    .line 5
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->g()V

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "QR_FAVORITES"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sput-object p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b:Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->f()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method
