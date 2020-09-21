.class public Lio/realm/SyncSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncSession$WaitForSessionWrapper;,
        Lio/realm/SyncSession$ErrorHandler;,
        Lio/realm/SyncSession$State;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final DIRECTION_DOWNLOAD:I = 0x1

.field private static final DIRECTION_UPLOAD:I = 0x2

.field private static final REFRESH_MARGIN_DELAY:J

.field private static final REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final STATE_VALUE_ACTIVE:B = 0x1t

.field private static final STATE_VALUE_DYING:B = 0x2t

.field private static final STATE_VALUE_ERROR:B = 0x4t

.field private static final STATE_VALUE_INACTIVE:B = 0x3t

.field private static final STATE_VALUE_WAITING_FOR_ACCESS_TOKEN:B


# instance fields
.field private final configuration:Lio/realm/SyncConfiguration;

.field private final errorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private volatile isClosed:Z

.field private final listenerIdToProgressListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/ProgressListener;",
            "Lio/realm/Progress;",
            ">;>;"
        }
    .end annotation
.end field

.field private networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

.field private networkRequest:Lio/realm/RealmAsyncTask;

.field private onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final progressListenerId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final progressListenerToOsTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/realm/ProgressListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

.field private refreshTokenTask:Lio/realm/RealmAsyncTask;

.field private final waitForChangesMutex:Ljava/lang/Object;

.field private final waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/realm/SyncSession$WaitForSessionWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lio/realm/SyncSession;->REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/realm/SyncSession;->REFRESH_MARGIN_DELAY:J

    return-void
.end method

.method constructor <init>(Lio/realm/SyncConfiguration;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-boolean v1, p0, Lio/realm/SyncSession;->isClosed:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/realm/SyncSession;->waitForChangesMutex:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/SyncSession;->progressListenerToOsTokenMap:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/realm/SyncSession;->progressListenerId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    iput-object p1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    .line 10
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getErrorHandler()Lio/realm/SyncSession$ErrorHandler;

    move-result-object p1

    iput-object p1, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-void
.end method

.method static synthetic access$100(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    return-object p0
.end method

.method static synthetic access$200(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SyncSession;->authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V

    return-void
.end method

.method static synthetic access$300(Lio/realm/SyncSession;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/realm/SyncSession;->isClosed:Z

    return p0
.end method

.method static synthetic access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/realm/SyncSession;->nativeRefreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SyncSession;->scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V

    return-void
.end method

.method static synthetic access$700(Lio/realm/SyncSession;)Lio/realm/SyncSession$ErrorHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-object p0
.end method

.method static synthetic access$800(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    return-object p0
.end method

.method static synthetic access$900(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SyncSession;->refreshAccessToken(Lio/realm/internal/network/AuthenticationServer;)V

    return-void
.end method

.method private addProgressListener(Lio/realm/ProgressMode;ILio/realm/ProgressListener;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p3}, Lio/realm/SyncSession;->checkProgressListenerArguments(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V

    .line 2
    sget-object v0, Lio/realm/ProgressMode;->INDEFINITELY:Lio/realm/ProgressMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lio/realm/SyncSession;->progressListenerId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lio/realm/internal/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v5}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1, p2, p1}, Lio/realm/SyncSession;->nativeAddProgressListener(Ljava/lang/String;JIZ)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 6
    iget-object p1, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lio/realm/SyncSession;->progressListenerToOsTokenMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    .line 4
    sget-object v0, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncSession$2;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncSession$2;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 5
    new-instance v0, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    return-void
.end method

.method private checkIfNotOnMainThread(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    invoke-virtual {v0}, Lio/realm/internal/android/AndroidCapabilities;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkProgressListenerArguments(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'mode\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'listener\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeAddProgressListener(Ljava/lang/String;JIZ)J
.end method

.method private static native nativeGetState(Ljava/lang/String;)B
.end method

.method private static native nativeRefreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeRemoveProgressListener(Ljava/lang/String;J)V
.end method

.method private native nativeWaitForDownloadCompletion(Ljava/lang/String;)Z
.end method

.method private native nativeWaitForUploadCompletion(Ljava/lang/String;)Z
.end method

.method private notifyAllChangesSent(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/SyncSession$WaitForSessionWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/realm/SyncSession$WaitForSessionWrapper;->handleResult(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private refreshAccessToken(Lio/realm/internal/network/AuthenticationServer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    .line 2
    sget-object v0, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncSession$4;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncSession$4;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    new-instance v0, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v0, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    return-void
.end method

.method private scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-wide v0, Lio/realm/SyncSession;->REFRESH_MARGIN_DELAY:J

    sub-long/2addr p2, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gez v3, :cond_0

    .line 2
    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "Expires time already reached for the access token, refresh as soon as possible"

    invoke-static {p3, p2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-wide p2, Lio/realm/SyncSession;->REFRESH_MARGIN_DELAY:J

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling an access_token refresh in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 7
    :cond_1
    sget-object v0, Lio/realm/SyncSession;->REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncSession$3;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncSession$3;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 8
    new-instance p2, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object p3, Lio/realm/SyncSession;->REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p2, p1, p3}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object p2, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    return-void
.end method

.method private waitForChanges(I)V
    .locals 6

    const-string v0, "Unknown direction: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lio/realm/SyncSession;->isClosed:Z

    if-nez v3, :cond_7

    .line 3
    new-instance v3, Lio/realm/SyncSession$WaitForSessionWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/realm/SyncSession$WaitForSessionWrapper;-><init>(Lio/realm/SyncSession$1;)V

    .line 4
    iget-object v5, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-ne p1, v2, :cond_2

    .line 5
    iget-object v5, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v5}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/realm/SyncSession;->nativeWaitForDownloadCompletion(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 6
    :cond_2
    iget-object v5, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v5}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/realm/SyncSession;->nativeWaitForUploadCompletion(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_5

    .line 7
    iget-object v3, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "It was not possible upload all local changes."

    goto :goto_2

    :cond_4
    const-string p1, "It was not possible to download all remote changes."

    .line 9
    :goto_2
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Has the SyncClient been started?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    invoke-virtual {v3}, Lio/realm/SyncSession$WaitForSessionWrapper;->waitForServerChanges()V

    .line 11
    :try_start_0
    iget-boolean p1, p0, Lio/realm/SyncSession;->isClosed:Z

    if-nez p1, :cond_6

    .line 12
    invoke-virtual {v3}, Lio/realm/SyncSession$WaitForSessionWrapper;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    invoke-virtual {v3}, Lio/realm/SyncSession$WaitForSessionWrapper;->throwExceptionIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_6
    iget-object p1, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p1

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public declared-synchronized addDownloadProgressListener(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lio/realm/SyncSession;->addProgressListener(Lio/realm/ProgressMode;ILio/realm/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUploadProgressListener(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lio/realm/SyncSession;->addProgressListener(Lio/realm/ProgressMode;ILio/realm/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method clearScheduledAccessTokenRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/realm/SyncSession;->isClosed:Z

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    return-void
.end method

.method public downloadAllServerChanges()V
    .locals 2

    const-string v0, "downloadAllServerChanges() cannot be called from the main thread."

    .line 1
    invoke-direct {p0, v0}, Lio/realm/SyncSession;->checkIfNotOnMainThread(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession;->waitForChangesMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lio/realm/SyncSession;->waitForChanges(I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAccessToken(Lio/realm/internal/network/AuthenticationServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0, v1}, Lio/realm/SyncUser;->isRealmAuthenticated(Lio/realm/SyncConfiguration;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object p2

    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {p2, v0}, Lio/realm/SyncUser;->getAccessToken(Lio/realm/SyncConfiguration;)Lio/realm/internal/objectserver/Token;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lio/realm/SyncSession;->scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "userToken"

    .line 8
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lio/realm/internal/objectserver/Token;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/SyncUser;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v2, "Session[%s]: Access token updated"

    .line 10
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v4}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/realm/SyncUser;->setRefreshToken(Lio/realm/internal/objectserver/Token;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v3}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Session[%s]: Can not parse the refresh_token into a valid JSONObject: "

    invoke-static {p2, v0, v2}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_2
    :goto_0
    iget-object p2, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 14
    invoke-static {}, Lio/realm/internal/SyncObjectServerFacade;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/network/NetworkStateReceiver;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    invoke-direct {p0, p1}, Lio/realm/SyncSession;->authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V

    goto :goto_1

    .line 16
    :cond_3
    new-instance p2, Lio/realm/SyncSession$1;

    invoke-direct {p2, p0, p1}, Lio/realm/SyncSession$1;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    iput-object p2, p0, Lio/realm/SyncSession;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    .line 17
    iget-object p1, p0, Lio/realm/SyncSession;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    invoke-static {p1}, Lio/realm/internal/network/NetworkStateReceiver;->addListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConfiguration()Lio/realm/SyncConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    return-object v0
.end method

.method public getServerUrl()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lio/realm/SyncSession$State;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/SyncSession;->nativeGetState(Ljava/lang/String;)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lio/realm/SyncSession$State;->fromByte(B)Lio/realm/SyncSession$State;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find session, Realm was probably closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUser()Lio/realm/SyncUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getUser()Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized notifyProgressListener(JJJ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/util/Pair;

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lio/realm/Progress;

    invoke-direct {p1, p3, p4, p5, p6}, Lio/realm/Progress;-><init>(JJ)V

    .line 3
    iget-object p2, v0, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/realm/Progress;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iput-object p1, v0, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    .line 5
    iget-object p2, v0, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lio/realm/ProgressListener;

    invoke-interface {p2, p1}, Lio/realm/ProgressListener;->onChange(Lio/realm/Progress;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying unknown listener failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method notifySessionError(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lio/realm/ErrorCode;->fromInt(I)Lio/realm/ErrorCode;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    new-instance v1, Lio/realm/ClientResetRequiredError;

    .line 5
    invoke-virtual {p0}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object v2

    const-string v3, "A Client Reset is required. Read more here: https://realm.io/docs/realm-object-server/#client-recovery-from-a-backup."

    invoke-direct {v1, p1, v3, p2, v2}, Lio/realm/ClientResetRequiredError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmConfiguration;)V

    .line 6
    invoke-interface {v0, p0, v1}, Lio/realm/SyncSession$ErrorHandler;->onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    new-instance v1, Lio/realm/ObjectServerError;

    invoke-direct {v1, p1, p2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lio/realm/SyncSession$ErrorHandler;->onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lio/realm/ProgressListener;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/realm/SyncSession;->progressListenerToOsTokenMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/util/Pair;

    iget-object v2, v2, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lio/realm/ProgressListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 8
    :cond_2
    iget-object p1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/realm/SyncSession;->nativeRemoveProgressListener(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public uploadAllLocalChanges()V
    .locals 2

    const-string v0, "uploadAllLocalChanges() cannot be called from the main thread."

    .line 1
    invoke-direct {p0, v0}, Lio/realm/SyncSession;->checkIfNotOnMainThread(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession;->waitForChangesMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lio/realm/SyncSession;->waitForChanges(I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
