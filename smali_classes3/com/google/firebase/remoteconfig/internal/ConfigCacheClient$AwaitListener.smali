.class Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AwaitListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "TTResult;>;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnCanceledListener;"
    }
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 260
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$1;

    .line 260
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;-><init>()V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 281
    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 284
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public onCanceled()V
    .locals 1

    .line 276
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 277
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 271
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 272
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;, "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener<TTResult;>;"
    .local p1, "o":Ljava/lang/Object;, "TTResult;"
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$AwaitListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 267
    return-void
.end method
