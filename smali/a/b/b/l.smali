.class public final La/b/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:La/b/b/n;

.field private final c:La/b/b/m;

.field private final d:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(La/b/b/n;La/b/b/m;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/b/b/l;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, La/b/b/l;->b:La/b/b/n;

    .line 4
    iput-object p2, p0, La/b/b/l;->c:La/b/b/m;

    .line 5
    iput-object p3, p0, La/b/b/l;->d:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .line 2
    iget-object v0, p0, La/b/b/l;->c:La/b/b/m;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, La/b/b/l;->b:La/b/b/n;

    iget-object v1, p0, La/b/b/l;->c:La/b/b/m;

    invoke-interface {v0, v1, p1, p2, p3}, La/b/b/n;->a(La/b/b/m;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/b/l;->d:Landroid/content/ComponentName;

    return-object v0
.end method
