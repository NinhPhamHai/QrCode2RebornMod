.class Lf/devrel/easypermissions/a/f;
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
.method public a()Landroid/content/Context;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf/devrel/easypermissions/a/g;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs a(I[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should never be requesting permissions on API < 23!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should never be requesting permissions on API < 23!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
