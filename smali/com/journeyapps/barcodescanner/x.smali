.class public Lcom/journeyapps/barcodescanner/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "x"


# instance fields
.field private b:Lcom/journeyapps/barcodescanner/a/m;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lcom/journeyapps/barcodescanner/s;

.field private f:Landroid/os/Handler;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/os/Handler$Callback;

.field private final k:Lcom/journeyapps/barcodescanner/a/v;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/a/m;Lcom/journeyapps/barcodescanner/s;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/x;->h:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/x;->i:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/journeyapps/barcodescanner/v;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/v;-><init>(Lcom/journeyapps/barcodescanner/x;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/x;->j:Landroid/os/Handler$Callback;

    .line 5
    new-instance v0, Lcom/journeyapps/barcodescanner/w;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/w;-><init>(Lcom/journeyapps/barcodescanner/x;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/x;->k:Lcom/journeyapps/barcodescanner/a/v;

    .line 6
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 7
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/x;->b:Lcom/journeyapps/barcodescanner/a/m;

    .line 8
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/x;->e:Lcom/journeyapps/barcodescanner/s;

    .line 9
    iput-object p3, p0, Lcom/journeyapps/barcodescanner/x;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/x;->c()V

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/x;Lcom/journeyapps/barcodescanner/E;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/x;->b(Lcom/journeyapps/barcodescanner/E;)V

    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/x;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/x;->i:Ljava/lang/Object;

    return-object p0
.end method

.method private b(Lcom/journeyapps/barcodescanner/E;)V
    .locals 8

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/x;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/journeyapps/barcodescanner/E;->a(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/x;->a(Lcom/journeyapps/barcodescanner/E;)Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/x;->e:Lcom/journeyapps/barcodescanner/s;

    invoke-virtual {v3, v2}, Lcom/journeyapps/barcodescanner/s;->a(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    sget-object v5, Lcom/journeyapps/barcodescanner/x;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found barcode in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->f:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Lcom/journeyapps/barcodescanner/b;

    invoke-direct {v0, v2, p1}, Lcom/journeyapps/barcodescanner/b;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/E;)V

    .line 16
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/x;->f:Landroid/os/Handler;

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/x;->f:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 21
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/x;->f:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/x;->e:Lcom/journeyapps/barcodescanner/s;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/s;->a()Ljava/util/List;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->f:Landroid/os/Handler;

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 27
    :cond_3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/x;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->b:Lcom/journeyapps/barcodescanner/a/m;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/x;->k:Lcom/journeyapps/barcodescanner/a/v;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/v;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/x;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/x;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/x;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/x;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/journeyapps/barcodescanner/E;)Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/E;->a()Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 5
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/journeyapps/barcodescanner/x;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/x;->c:Landroid/os/HandlerThread;

    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/x;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/x;->j:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/x;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/x;->h:Z

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/x;->c()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/x;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/s;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/x;->e:Lcom/journeyapps/barcodescanner/s;

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/x;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/x;->h:Z

    .line 5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/x;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/x;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
