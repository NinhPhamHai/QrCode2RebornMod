.class public abstract Lf/devrel/easypermissions/a/d;
.super Lf/devrel/easypermissions/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/devrel/easypermissions/a/g<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/devrel/easypermissions/a/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/d;->c()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "RationaleDialogFragmentCompat"

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3
    instance-of v2, v2, Lf/devrel/easypermissions/k;

    if-eqz v2, :cond_0

    const-string p1, "BSPermissionsHelper"

    const-string p2, "Found existing fragment, not showing rationale."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static/range {p1 .. p6}, Lf/devrel/easypermissions/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lf/devrel/easypermissions/k;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0, v1}, Lf/devrel/easypermissions/k;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c()Landroid/support/v4/app/FragmentManager;
.end method
