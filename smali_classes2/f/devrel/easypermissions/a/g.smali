.class public abstract Lf/devrel/easypermissions/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/devrel/easypermissions/a/g;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lf/devrel/easypermissions/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lf/devrel/easypermissions/a/g<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lf/devrel/easypermissions/a/f;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/f;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lf/devrel/easypermissions/a/b;

    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/b;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lf/devrel/easypermissions/a/a;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Landroid/app/Fragment;)Lf/devrel/easypermissions/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            ")",
            "Lf/devrel/easypermissions/a/g<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 10
    new-instance v0, Lf/devrel/easypermissions/a/f;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/f;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lf/devrel/easypermissions/a/e;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/e;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lf/devrel/easypermissions/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lf/devrel/easypermissions/a/g<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 7
    new-instance v0, Lf/devrel/easypermissions/a/f;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/f;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lf/devrel/easypermissions/a/h;

    invoke-direct {v0, p0}, Lf/devrel/easypermissions/a/h;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method private varargs a([Ljava/lang/String;)Z
    .locals 4

    .line 12
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 13
    invoke-virtual {p0, v3}, Lf/devrel/easypermissions/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public abstract a()Landroid/content/Context;
.end method

.method public varargs abstract a(I[Ljava/lang/String;)V
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0, p6}, Lf/devrel/easypermissions/a/g;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual/range {p0 .. p6}, Lf/devrel/easypermissions/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p5, p6}, Lf/devrel/easypermissions/a/g;->a(I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/devrel/easypermissions/a/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public varargs abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
.end method
