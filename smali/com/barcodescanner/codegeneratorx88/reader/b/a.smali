.class public Lcom/barcodescanner/codegeneratorx88/reader/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;Landroid/support/v4/app/FragmentManager;I)V
    .locals 1

    .line 4
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p4, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/support/v4/app/Fragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p3, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
