.class public Lcom/journeyapps/barcodescanner/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "m"


# instance fields
.field private b:Lcom/journeyapps/barcodescanner/a/q;

.field private c:Lcom/journeyapps/barcodescanner/a/p;

.field private d:Lcom/journeyapps/barcodescanner/a/n;

.field private e:Landroid/os/Handler;

.field private f:Lcom/journeyapps/barcodescanner/a/s;

.field private g:Z

.field private h:Z

.field private i:Lcom/journeyapps/barcodescanner/a/o;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->h:Z

    .line 4
    new-instance v0, Lcom/journeyapps/barcodescanner/a/o;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/o;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->i:Lcom/journeyapps/barcodescanner/a/o;

    .line 5
    new-instance v0, Lcom/journeyapps/barcodescanner/a/g;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/a/g;-><init>(Lcom/journeyapps/barcodescanner/a/m;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->j:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/journeyapps/barcodescanner/a/h;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/a/h;-><init>(Lcom/journeyapps/barcodescanner/a/m;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->k:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/journeyapps/barcodescanner/a/i;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/a/i;-><init>(Lcom/journeyapps/barcodescanner/a/m;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->l:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lcom/journeyapps/barcodescanner/a/j;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/a/j;-><init>(Lcom/journeyapps/barcodescanner/a/m;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->m:Ljava/lang/Runnable;

    .line 9
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 10
    invoke-static {}, Lcom/journeyapps/barcodescanner/a/q;->b()Lcom/journeyapps/barcodescanner/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    .line 11
    new-instance v0, Lcom/journeyapps/barcodescanner/a/n;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/a/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->d:Lcom/journeyapps/barcodescanner/a/n;

    .line 12
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/a/m;->d:Lcom/journeyapps/barcodescanner/a/n;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->i:Lcom/journeyapps/barcodescanner/a/o;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/a/n;->a(Lcom/journeyapps/barcodescanner/a/o;)V

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/a/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/a/m;->d:Lcom/journeyapps/barcodescanner/a/n;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/a/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/a/m;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/a/m;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 18
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/a/m;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/a/m;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/a/m;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/a/m;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/D;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/m;->j()Lcom/journeyapps/barcodescanner/D;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/a/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/a/m;->c:Lcom/journeyapps/barcodescanner/a/p;

    return-object p0
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/a/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    return-object p0
.end method

.method private j()Lcom/journeyapps/barcodescanner/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->d:Lcom/journeyapps/barcodescanner/a/n;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/n;->e()Lcom/journeyapps/barcodescanner/D;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraInstance is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(D)V
    .locals 2

    .line 19
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 20
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    new-instance v1, Lcom/journeyapps/barcodescanner/a/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/journeyapps/barcodescanner/a/k;-><init>(Lcom/journeyapps/barcodescanner/a/m;D)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/m;->e:Landroid/os/Handler;

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/o;)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    if-nez v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/m;->i:Lcom/journeyapps/barcodescanner/a/o;

    .line 11
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->d:Lcom/journeyapps/barcodescanner/a/n;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/a/n;->a(Lcom/journeyapps/barcodescanner/a/o;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/p;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/m;->c:Lcom/journeyapps/barcodescanner/a/p;

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/s;)V
    .locals 1

    .line 5
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/m;->f:Lcom/journeyapps/barcodescanner/a/s;

    .line 6
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->d:Lcom/journeyapps/barcodescanner/a/n;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/a/n;->a(Lcom/journeyapps/barcodescanner/a/s;)V

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/v;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    new-instance v1, Lcom/journeyapps/barcodescanner/a/f;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/a/f;-><init>(Lcom/journeyapps/barcodescanner/a/m;Lcom/journeyapps/barcodescanner/a/v;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 12
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 13
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    new-instance v1, Lcom/journeyapps/barcodescanner/a/e;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/a/e;-><init>(Lcom/journeyapps/barcodescanner/a/m;Z)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 3
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/m;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->h:Z

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/m;->k()V

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/m;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Lcom/journeyapps/barcodescanner/a/s;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->f:Lcom/journeyapps/barcodescanner/a/s;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 3
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    new-instance v1, Lcom/journeyapps/barcodescanner/a/l;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/a/l;-><init>(Lcom/journeyapps/barcodescanner/a/m;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    return v0
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->g:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/a/m;->h:Z

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/m;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/m;->k()V

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/m;->b:Lcom/journeyapps/barcodescanner/a/q;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/m;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method
