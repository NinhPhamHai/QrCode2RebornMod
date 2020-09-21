.class Lcom/journeyapps/barcodescanner/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/journeyapps/barcodescanner/a/q;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:I

.field private final e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/a/q;->e:Ljava/lang/Object;

    return-void
.end method

.method public static b()Lcom/journeyapps/barcodescanner/a/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/a/q;->a:Lcom/journeyapps/barcodescanner/a/q;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/journeyapps/barcodescanner/a/q;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/a/q;-><init>()V

    sput-object v0, Lcom/journeyapps/barcodescanner/a/q;->a:Lcom/journeyapps/barcodescanner/a/q;

    .line 3
    :cond_0
    sget-object v0, Lcom/journeyapps/barcodescanner/a/q;->a:Lcom/journeyapps/barcodescanner/a/q;

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/q;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->b:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    if-lez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->c:Landroid/os/HandlerThread;

    .line 5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/a/q;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->b:Landroid/os/Handler;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CameraThread is not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/q;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->c:Landroid/os/HandlerThread;

    .line 4
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->b:Landroid/os/Handler;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/q;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    .line 7
    iget v1, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    if-nez v1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/q;->d()V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/q;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/a/q;->c()V

    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/q;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/Runnable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/q;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/journeyapps/barcodescanner/a/q;->d:I

    .line 6
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/a/q;->a(Ljava/lang/Runnable;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
