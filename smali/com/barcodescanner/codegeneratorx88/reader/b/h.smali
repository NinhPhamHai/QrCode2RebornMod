.class public Lcom/barcodescanner/codegeneratorx88/reader/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0e0080

    .line 2
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0e00c0

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0e007f

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "FIRST_INSTALL_APPS"

    invoke-static {p0, v1, p1}, Lcom/utility/SharedPreference;->setBoolean(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Boolean;)V

    :cond_0
    const-string p1, "layout_inflater"

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0a0038

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance v1, Lb/a/a/l$a;

    invoke-direct {v1, p0}, Lb/a/a/l$a;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0e006f

    .line 10
    invoke-virtual {v1, p0}, Lb/a/a/l$a;->c(I)Lb/a/a/l$a;

    .line 11
    invoke-virtual {v1, p1, v0}, Lb/a/a/l$a;->a(Landroid/view/View;Z)Lb/a/a/l$a;

    const p0, 0x7f0e00a4

    .line 12
    invoke-virtual {v1, p0}, Lb/a/a/l$a;->b(I)Lb/a/a/l$a;

    new-instance p0, Lcom/barcodescanner/codegeneratorx88/reader/b/g;

    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/g;-><init>()V

    .line 13
    invoke-virtual {v1, p0}, Lb/a/a/l$a;->b(Lb/a/a/l$j;)Lb/a/a/l$a;

    .line 14
    invoke-virtual {v1}, Lb/a/a/l$a;->a()Lb/a/a/l;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lb/a/a/l;->show()V

    return-void
.end method
