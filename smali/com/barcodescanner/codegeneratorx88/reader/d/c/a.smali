.class public Lcom/barcodescanner/codegeneratorx88/reader/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/support/design/widget/BottomNavigationView;)V
    .locals 5

    const-string p0, "BNVHelper"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/internal/BottomNavigationMenuView;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mShiftingMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/BottomNavigationItemView;

    .line 8
    invoke-virtual {v1, v2}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 9
    invoke-virtual {v1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    const v4, 0x7f08010a

    if-ne v3, v4, :cond_0

    const-string v3, ""

    .line 11
    invoke-virtual {v1, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to change value of shift mode"

    .line 12
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Unable to get shift mode field"

    .line 13
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
