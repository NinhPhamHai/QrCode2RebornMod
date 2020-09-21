.class public abstract Lf/devrel/easypermissions/a/c;
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
    .locals 8

    .line 1
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/c;->c()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RationaleDialogFragment"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 3
    instance-of v2, v2, Lf/devrel/easypermissions/j;

    if-eqz v2, :cond_0

    const-string p1, "BFPermissionsHelper"

    const-string p2, "Found existing fragment, not showing rationale."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 5
    invoke-static/range {v2 .. v7}, Lf/devrel/easypermissions/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lf/devrel/easypermissions/j;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0, v1}, Lf/devrel/easypermissions/j;->a(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c()Landroid/app/FragmentManager;
.end method
