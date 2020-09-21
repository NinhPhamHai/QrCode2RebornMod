.class public Lio/realm/PermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/PermissionManager$RevokeOfferCallback;,
        Lio/realm/PermissionManager$OffersCallback;,
        Lio/realm/PermissionManager$AcceptOfferCallback;,
        Lio/realm/PermissionManager$MakeOfferCallback;,
        Lio/realm/PermissionManager$ApplyPermissionsCallback;,
        Lio/realm/PermissionManager$PermissionsCallback;,
        Lio/realm/PermissionManager$PermissionManagerBaseCallback;,
        Lio/realm/PermissionManager$RevokeOfferAsyncTask;,
        Lio/realm/PermissionManager$GetOffersAsyncTask;,
        Lio/realm/PermissionManager$PermissionManagerTask;,
        Lio/realm/PermissionManager$AcceptOfferAsyncTask;,
        Lio/realm/PermissionManager$MakeOfferAsyncTask;,
        Lio/realm/PermissionManager$ApplyPermissionTask;,
        Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;,
        Lio/realm/PermissionManager$GetPermissionsAsyncTask;,
        Lio/realm/PermissionManager$RealmType;,
        Lio/realm/PermissionManager$Cache;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/PermissionManager$Cache;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final cacheLock:Ljava/lang/Object;


# instance fields
.field private activeTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/RealmAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private clientReset:Z

.field private closed:Z

.field private defaultPermissionRealm:Lio/realm/Realm;

.field final defaultPermissionRealmConfig:Lio/realm/SyncConfiguration;

.field private volatile defaultPermissionRealmError:Lio/realm/ObjectServerError;

.field private defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

.field private defaultPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private delayedTasks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/realm/PermissionManager$PermissionManagerTask;",
            ">;"
        }
    .end annotation
.end field

.field private final errorLock:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private managementRealm:Lio/realm/Realm;

.field final managementRealmConfig:Lio/realm/SyncConfiguration;

.field private volatile managementRealmError:Lio/realm/ObjectServerError;

.field private managementRealmOpenTask:Lio/realm/RealmAsyncTask;

.field private offers:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field

.field private openInProgress:Z

.field private permissionRealm:Lio/realm/Realm;

.field final permissionRealmConfig:Lio/realm/SyncConfiguration;

.field private volatile permissionRealmError:Lio/realm/ObjectServerError;

.field private permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

.field private final threadId:J

.field private final user:Lio/realm/SyncUser;

.field private userPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/PermissionManager;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/realm/SyncUser;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/PermissionManager;->openInProgress:Z

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->handler:Landroid/os/Handler;

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/Deque;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->activeTasks:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->errorLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    .line 8
    iput-object v1, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    .line 9
    iput-object v1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    .line 10
    iput-boolean v0, p0, Lio/realm/PermissionManager;->clientReset:Z

    .line 11
    iput-object p1, p0, Lio/realm/PermissionManager;->user:Lio/realm/SyncUser;

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/PermissionManager;->threadId:J

    .line 13
    new-instance v1, Lio/realm/SyncConfiguration$Builder;

    sget-object v2, Lio/realm/PermissionManager$RealmType;->MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

    .line 14
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/PermissionManager;->getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance v2, Lio/realm/PermissionManager$2;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$2;-><init>(Lio/realm/PermissionManager;)V

    .line 15
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lio/realm/internal/permissions/ManagementModule;

    invoke-direct {v2}, Lio/realm/internal/permissions/ManagementModule;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, v2, v3}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object v1

    iput-object v1, p0, Lio/realm/PermissionManager;->managementRealmConfig:Lio/realm/SyncConfiguration;

    .line 18
    new-instance v1, Lio/realm/SyncConfiguration$Builder;

    sget-object v2, Lio/realm/PermissionManager$RealmType;->PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 19
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/PermissionManager;->getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance v2, Lio/realm/PermissionManager$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$3;-><init>(Lio/realm/PermissionManager;)V

    .line 20
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lio/realm/internal/permissions/PermissionModule;

    invoke-direct {v2}, Lio/realm/internal/permissions/PermissionModule;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v2, v3}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lio/realm/SyncConfiguration$Builder;->waitForInitialRemoteData()Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object v1

    iput-object v1, p0, Lio/realm/PermissionManager;->permissionRealmConfig:Lio/realm/SyncConfiguration;

    .line 24
    new-instance v1, Lio/realm/SyncConfiguration$Builder;

    sget-object v2, Lio/realm/PermissionManager$RealmType;->DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 25
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/PermissionManager;->getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance p1, Lio/realm/PermissionManager$4;

    invoke-direct {p1, p0}, Lio/realm/PermissionManager$4;-><init>(Lio/realm/PermissionManager;)V

    .line 26
    invoke-virtual {v1, p1}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object p1

    new-instance v1, Lio/realm/internal/permissions/PermissionModule;

    invoke-direct {v1}, Lio/realm/internal/permissions/PermissionModule;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, v1, v0}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lio/realm/SyncConfiguration$Builder;->waitForInitialRemoteData()Lio/realm/SyncConfiguration$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lio/realm/SyncConfiguration$Builder;->readOnly()Lio/realm/SyncConfiguration$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmConfig:Lio/realm/SyncConfiguration;

    return-void
.end method

.method static synthetic access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->errorLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lio/realm/PermissionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->activeTasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->defaultPermissions:Lio/realm/RealmResults;

    return-object p0
.end method

.method static synthetic access$1202(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissions:Lio/realm/RealmResults;

    return-object p1
.end method

.method static synthetic access$200(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    return-object p0
.end method

.method static synthetic access$202(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    return-object p1
.end method

.method static synthetic access$2300(Lio/realm/PermissionManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/realm/PermissionManager;->closed:Z

    return p0
.end method

.method static synthetic access$2400(Lio/realm/PermissionManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/realm/PermissionManager;->clientReset:Z

    return p0
.end method

.method static synthetic access$2402(Lio/realm/PermissionManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/realm/PermissionManager;->clientReset:Z

    return p1
.end method

.method static synthetic access$2500(Lio/realm/PermissionManager;)Lio/realm/SyncUser;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->user:Lio/realm/SyncUser;

    return-object p0
.end method

.method static synthetic access$2600(Lio/realm/PermissionManager;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->offers:Lio/realm/RealmResults;

    return-object p0
.end method

.method static synthetic access$2602(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->offers:Lio/realm/RealmResults;

    return-object p1
.end method

.method static synthetic access$2900(Lio/realm/PermissionManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    return-object p0
.end method

.method static synthetic access$302(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    return-object p1
.end method

.method static synthetic access$400(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    return-object p0
.end method

.method static synthetic access$402(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    return-object p1
.end method

.method static synthetic access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$502(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$600(Lio/realm/PermissionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfRealmsAreOpenedAndRunDelayedTasks()V

    return-void
.end method

.method static synthetic access$700(Lio/realm/PermissionManager;)Lio/realm/Realm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$702(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$800(Lio/realm/PermissionManager;)Lio/realm/Realm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$802(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager;->userPermissions:Lio/realm/RealmResults;

    return-object p0
.end method

.method static synthetic access$902(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager;->userPermissions:Lio/realm/RealmResults;

    return-object p1
.end method

.method private activateTask(Lio/realm/PermissionManager$PermissionManagerTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager;->activeTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->activateTask(Lio/realm/PermissionManager$PermissionManagerTask;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->delayTask(Lio/realm/PermissionManager$PermissionManagerTask;)V

    .line 4
    invoke-direct {p0}, Lio/realm/PermissionManager;->openRealms()V

    :goto_0
    return-object p1
.end method

.method private checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'callback\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkIfRealmsAreOpenedAndRunDelayedTasks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager;->errorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lio/realm/PermissionManager;->openInProgress:Z

    .line 4
    invoke-direct {p0}, Lio/realm/PermissionManager;->runDelayedTasks()V

    .line 5
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkIfValidThread()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/PermissionManager;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PermissionManager was accessed from the wrong thread. It can only be accessed on the thread it was created on."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private delayTask(Lio/realm/PermissionManager$PermissionManagerTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getInstance(Lio/realm/SyncUser;)Lio/realm/PermissionManager;
    .locals 4

    .line 1
    sget-object v0, Lio/realm/PermissionManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lio/realm/PermissionManager$1;

    invoke-direct {v2}, Lio/realm/PermissionManager$1;-><init>()V

    .line 5
    sget-object v3, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/PermissionManager$Cache;

    .line 7
    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lio/realm/PermissionManager;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager;-><init>(Lio/realm/SyncUser;)V

    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    .line 9
    :cond_1
    iget-object p0, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    iget-object p0, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    .line 10
    iget-object p0, v1, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "realms"

    goto :goto_0

    :cond_0
    const-string v0, "realm"

    :goto_0
    move-object v2, v0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/PermissionManager$RealmType;->isGlobalRealm()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    goto :goto_1

    :cond_1
    const-string v1, "/~/"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/PermissionManager$RealmType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create URL to the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Realm"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openRealms()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/realm/PermissionManager;->openInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/realm/PermissionManager;->openInProgress:Z

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealmConfig:Lio/realm/SyncConfiguration;

    new-instance v1, Lio/realm/PermissionManager$5;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$5;-><init>(Lio/realm/PermissionManager;)V

    invoke-static {v0, v1}, Lio/realm/Realm;->getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 4
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealmConfig:Lio/realm/SyncConfiguration;

    new-instance v1, Lio/realm/PermissionManager$6;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$6;-><init>(Lio/realm/PermissionManager;)V

    invoke-static {v0, v1}, Lio/realm/Realm;->getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 5
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmConfig:Lio/realm/SyncConfiguration;

    new-instance v1, Lio/realm/PermissionManager$7;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$7;-><init>(Lio/realm/PermissionManager;)V

    invoke-static {v0, v1}, Lio/realm/Realm;->getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    :cond_0
    return-void
.end method

.method private runDelayedTasks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/PermissionManager$PermissionManagerTask;

    .line 2
    invoke-direct {p0, v1}, Lio/realm/PermissionManager;->activateTask(Lio/realm/PermissionManager$PermissionManagerTask;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method


# virtual methods
.method public acceptOffer(Ljava/lang/String;Lio/realm/PermissionManager$AcceptOfferCallback;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$AcceptOfferCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'offerToken\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyPermissions(Lio/realm/permissions/PermissionRequest;Lio/realm/PermissionManager$ApplyPermissionsCallback;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    new-instance v0, Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$ApplyPermissionTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionRequest;Lio/realm/PermissionManager$ApplyPermissionsCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0
.end method

.method public close()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    sget-object v0, Lio/realm/PermissionManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    iget-object v2, p0, Lio/realm/PermissionManager;->user:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/PermissionManager$Cache;

    .line 4
    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 5
    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    .line 6
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 8
    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 11
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 13
    iput-object v2, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 14
    :cond_1
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 16
    iput-object v2, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 17
    :cond_2
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 19
    iput-object v2, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 20
    :cond_3
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 22
    :cond_4
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 24
    :cond_5
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 26
    :cond_6
    iput-boolean v3, p0, Lio/realm/PermissionManager;->closed:Z

    return-void

    :catchall_0
    move-exception v1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/realm/PermissionManager;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PermissionManager was not correctly closed before being finalized."

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCreatedOffers(Lio/realm/PermissionManager$OffersCallback;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    new-instance v0, Lio/realm/PermissionManager$GetOffersAsyncTask;

    invoke-direct {v0, p0, p0, p1}, Lio/realm/PermissionManager$GetOffersAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$OffersCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0
.end method

.method getDefaultPermissions(Lio/realm/PermissionManager$PermissionsCallback;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    new-instance v0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    invoke-direct {v0, p0, p0, p1}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0
.end method

.method public getPermissions(Lio/realm/PermissionManager$PermissionsCallback;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    new-instance v0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-direct {v0, p0, p0, p1}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    iget-boolean v0, p0, Lio/realm/PermissionManager;->closed:Z

    return v0
.end method

.method public makeOffer(Lio/realm/permissions/PermissionOffer;Lio/realm/PermissionManager$MakeOfferCallback;)Lio/realm/RealmAsyncTask;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    invoke-virtual {p1}, Lio/realm/permissions/PermissionOffer;->isOfferCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$MakeOfferAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionOffer;Lio/realm/PermissionManager$MakeOfferCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offer has already been created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public revokeOffer(Ljava/lang/String;Lio/realm/PermissionManager$RevokeOfferCallback;)Lio/realm/RealmAsyncTask;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValidThread()V

    .line 2
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    new-instance v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$RevokeOfferCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    return-object v0
.end method
