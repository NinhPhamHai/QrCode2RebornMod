.class Lf/devrel/easypermissions/a/h;
.super Lf/devrel/easypermissions/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/devrel/easypermissions/a/d<",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/devrel/easypermissions/a/d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(I[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
