.class public Lf/devrel/easypermissions/k;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lf/devrel/easypermissions/d$a;

.field private b:Lf/devrel/easypermissions/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lf/devrel/easypermissions/k;
    .locals 9

    .line 1
    new-instance v0, Lf/devrel/easypermissions/k;

    invoke-direct {v0}, Lf/devrel/easypermissions/k;-><init>()V

    .line 2
    new-instance v8, Lf/devrel/easypermissions/i;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lf/devrel/easypermissions/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v8}, Lf/devrel/easypermissions/i;->a()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lf/devrel/easypermissions/d$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lf/devrel/easypermissions/d$a;

    iput-object v0, p0, Lf/devrel/easypermissions/k;->a:Lf/devrel/easypermissions/d$a;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lf/devrel/easypermissions/d$b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lf/devrel/easypermissions/d$b;

    iput-object v0, p0, Lf/devrel/easypermissions/k;->b:Lf/devrel/easypermissions/d$b;

    .line 7
    :cond_1
    instance-of v0, p1, Lf/devrel/easypermissions/d$a;

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    check-cast v0, Lf/devrel/easypermissions/d$a;

    iput-object v0, p0, Lf/devrel/easypermissions/k;->a:Lf/devrel/easypermissions/d$a;

    .line 9
    :cond_2
    instance-of v0, p1, Lf/devrel/easypermissions/d$b;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lf/devrel/easypermissions/d$b;

    iput-object p1, p0, Lf/devrel/easypermissions/k;->b:Lf/devrel/easypermissions/d$b;

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 2
    new-instance p1, Lf/devrel/easypermissions/i;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/devrel/easypermissions/i;-><init>(Landroid/os/Bundle;)V

    .line 3
    new-instance v0, Lf/devrel/easypermissions/h;

    iget-object v1, p0, Lf/devrel/easypermissions/k;->a:Lf/devrel/easypermissions/d$a;

    iget-object v2, p0, Lf/devrel/easypermissions/k;->b:Lf/devrel/easypermissions/d$b;

    invoke-direct {v0, p0, p1, v1, v2}, Lf/devrel/easypermissions/h;-><init>(Lf/devrel/easypermissions/k;Lf/devrel/easypermissions/i;Lf/devrel/easypermissions/d$a;Lf/devrel/easypermissions/d$b;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lf/devrel/easypermissions/i;->b(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/devrel/easypermissions/k;->a:Lf/devrel/easypermissions/d$a;

    .line 3
    iput-object v0, p0, Lf/devrel/easypermissions/k;->b:Lf/devrel/easypermissions/d$b;

    return-void
.end method
