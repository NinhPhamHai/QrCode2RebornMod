.class La/b/b/f;
.super La/b/b/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/g;->a(La/b/b/a;)La/b/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:La/b/b/a;

.field final synthetic c:La/b/b/g;


# direct methods
.method constructor <init>(La/b/b/g;La/b/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/b/f;->c:La/b/b/g;

    iput-object p2, p0, La/b/b/f;->b:La/b/b/a;

    invoke-direct {p0}, La/b/b/m$a;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, La/b/b/f;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/b/f;->b:La/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/b/b/f;->a:Landroid/os/Handler;

    new-instance v1, La/b/b/b;

    invoke-direct {v1, p0, p1, p2}, La/b/b/b;-><init>(La/b/b/f;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 5
    iget-object v0, p0, La/b/b/f;->b:La/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, La/b/b/f;->a:Landroid/os/Handler;

    new-instance v1, La/b/b/d;

    invoke-direct {v1, p0, p1}, La/b/b/d;-><init>(La/b/b/f;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 3
    iget-object v0, p0, La/b/b/f;->b:La/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, La/b/b/f;->a:Landroid/os/Handler;

    new-instance v1, La/b/b/c;

    invoke-direct {v1, p0, p1, p2}, La/b/b/c;-><init>(La/b/b/f;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/b/f;->b:La/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/b/b/f;->a:Landroid/os/Handler;

    new-instance v1, La/b/b/e;

    invoke-direct {v1, p0, p1, p2}, La/b/b/e;-><init>(La/b/b/f;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
