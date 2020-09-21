.class public Lio/realm/SyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncManager$Debug;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static APP_ID:Ljava/lang/String;

.field static final NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

.field private static authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/realm/AuthenticationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile authServer:Lio/realm/internal/network/AuthenticationServer;

.field static volatile defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private static networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

.field private static sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/SyncSession;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile userStore:Lio/realm/UserStore;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    new-instance v0, Lio/realm/SyncManager$1;

    invoke-direct {v0}, Lio/realm/SyncManager$1;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Lio/realm/internal/network/OkHttpAuthenticationServer;

    invoke-direct {v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    .line 6
    new-instance v0, Lio/realm/SyncManager$2;

    invoke-direct {v0}, Lio/realm/SyncManager$2;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    .line 7
    sget-object v0, Lio/realm/SyncManager;->SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

    sput-object v0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 1
    invoke-static {}, Lio/realm/SyncManager;->notifyNetworkIsBack()V

    return-void
.end method

.method public static addAuthenticationListener(Lio/realm/AuthenticationListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'listener\' required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized bindSessionWithConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matching Java SyncSession could not be found for: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    sget-object p0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-virtual {v1, p0, p1}, Lio/realm/SyncSession;->getAccessToken(Lio/realm/internal/network/AuthenticationServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    invoke-static {p0}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getAllSessions(Lio/realm/SyncUser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SyncUser;",
            ")",
            "Ljava/util/List<",
            "Lio/realm/SyncSession;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncSession;

    .line 3
    invoke-virtual {v2}, Lio/realm/SyncSession;->getState()Lio/realm/SyncSession$State;

    move-result-object v3

    sget-object v4, Lio/realm/SyncSession$State;->ERROR:Lio/realm/SyncSession$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/realm/SyncUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty \'syncUser\' is required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static getAuthServer()Lio/realm/internal/network/AuthenticationServer;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    return-object v0
.end method

.method public static declared-synchronized getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;
    .locals 3

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lio/realm/SyncSession;

    invoke-direct {v1, p0}, Lio/realm/SyncSession;-><init>(Lio/realm/SyncConfiguration;)V

    .line 3
    sget-object v2, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p0, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string p0, "first session created add network listener"

    const/4 v2, 0x0

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lio/realm/SyncManager;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    invoke-static {p0}, Lio/realm/internal/network/NetworkStateReceiver;->addListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 8
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty \'syncConfiguration\' is required."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static getUserStore()Lio/realm/UserStore;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/SyncManager;->userStore:Lio/realm/UserStore;

    return-object v0
.end method

.method static init(Ljava/lang/String;Lio/realm/UserStore;)V
    .locals 0

    .line 1
    sput-object p0, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 2
    sput-object p1, Lio/realm/SyncManager;->userStore:Lio/realm/UserStore;

    return-void
.end method

.method protected static native nativeInitializeSyncManager(Ljava/lang/String;)V
.end method

.method private static native nativeReconnect()V
.end method

.method private static native nativeReset()V
.end method

.method private static native nativeSimulateSyncError(Ljava/lang/String;ILjava/lang/String;Z)V
.end method

.method private static declared-synchronized notifyErrorHandler(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncSession;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {v2}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 3
    :cond_1
    :try_start_1
    invoke-virtual {v2, p0, p1}, Lio/realm/SyncSession;->notifySessionError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    :try_start_2
    invoke-static {v2}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static declared-synchronized notifyNetworkIsBack()V
    .locals 2

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lio/realm/SyncManager;->nativeReconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2
    :try_start_1
    invoke-static {v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized notifyProgressListener(Ljava/lang/String;JJJ)V
    .locals 8

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lio/realm/SyncSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 2
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lio/realm/SyncSession;->notifyProgressListener(JJJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    :try_start_2
    invoke-static {p0}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static notifyUserLoggedIn(Lio/realm/SyncUser;)V
    .locals 2

    .line 1
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/AuthenticationListener;

    .line 2
    invoke-interface {v1, p0}, Lio/realm/AuthenticationListener;->loggedIn(Lio/realm/SyncUser;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static notifyUserLoggedOut(Lio/realm/SyncUser;)V
    .locals 2

    .line 1
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/AuthenticationListener;

    .line 2
    invoke-interface {v1, p0}, Lio/realm/AuthenticationListener;->loggedOut(Lio/realm/SyncUser;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeAuthenticationListener(Lio/realm/AuthenticationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static declared-synchronized removeSession(Lio/realm/SyncConfiguration;)V
    .locals 2

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/realm/SyncSession;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/SyncSession;->close()V

    .line 3
    :cond_0
    sget-object p0, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "last session dropped, remove network listener"

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sget-object p0, Lio/realm/SyncManager;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    invoke-static {p0}, Lio/realm/internal/network/NetworkStateReceiver;->removeListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty \'syncConfiguration\' is required."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized reset()V
    .locals 2

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lio/realm/SyncManager;->nativeReset()V

    .line 2
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static setAuthServerImpl(Lio/realm/internal/network/AuthenticationServer;)V
    .locals 0

    .line 1
    sput-object p0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    return-void
.end method

.method public static setDefaultSessionErrorHandler(Lio/realm/SyncSession$ErrorHandler;)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/realm/SyncManager;->SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

    sput-object p0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    goto :goto_0

    .line 2
    :cond_0
    sput-object p0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    :goto_0
    return-void
.end method

.method public static setUserStore(Lio/realm/UserStore;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lio/realm/SyncManager;->userStore:Lio/realm/UserStore;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'userStore\' required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static simulateClientReset(Lio/realm/SyncSession;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/realm/ErrorCode;->DIVERGING_HISTORIES:Lio/realm/ErrorCode;

    .line 2
    invoke-virtual {v0}, Lio/realm/ErrorCode;->intValue()I

    move-result v0

    const-string v1, "Simulate Client Reset"

    const/4 v2, 0x1

    .line 3
    invoke-static {p0, v0, v1, v2}, Lio/realm/SyncManager;->nativeSimulateSyncError(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method
