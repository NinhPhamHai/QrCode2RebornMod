.class public final Lio/realm/internal/SharedRealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/SharedRealm$SchemaChangedCallback;,
        Lio/realm/internal/SharedRealm$InitializationCallback;,
        Lio/realm/internal/SharedRealm$MigrationCallback;,
        Lio/realm/internal/SharedRealm$VersionID;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static final FILE_EXCEPTION_KIND_ACCESS_ERROR:B = 0x0t

.field public static final FILE_EXCEPTION_KIND_BAD_HISTORY:B = 0x1t

.field public static final FILE_EXCEPTION_KIND_EXISTS:B = 0x3t

.field public static final FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED:B = 0x6t

.field public static final FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE:B = 0x5t

.field public static final FILE_EXCEPTION_KIND_NOT_FOUND:B = 0x4t

.field public static final FILE_EXCEPTION_KIND_PERMISSION_DENIED:B = 0x2t

.field private static final nativeFinalizerPtr:J

.field private static volatile temporaryDirectory:Ljava/io/File;


# instance fields
.field public final capabilities:Lio/realm/internal/Capabilities;

.field public final collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field final context:Lio/realm/internal/NativeContext;

.field public final iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/Collection$Iterator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nativePtr:J

.field private final osRealmConfig:Lio/realm/internal/OsRealmConfig;

.field private final pendingRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/PendingRow;",
            ">;>;"
        }
    .end annotation
.end field

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field private final schemaInfo:Lio/realm/internal/OsSchemaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/SharedRealm;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/SharedRealm;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(JLio/realm/internal/OsRealmConfig;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->collections:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    .line 19
    iput-wide p1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    .line 20
    iput-object p3, p0, Lio/realm/internal/SharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 21
    new-instance p1, Lio/realm/internal/OsSchemaInfo;

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/SharedRealm;)V

    iput-object p1, p0, Lio/realm/internal/SharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 22
    invoke-virtual {p3}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 23
    iget-object p1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 24
    new-instance p1, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {p1}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    iput-object p1, p0, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 26
    iget-wide p1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lio/realm/internal/SharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsRealmConfig;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->collections:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    .line 5
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 6
    new-instance v1, Lio/realm/internal/android/AndroidRealmNotifier;

    invoke-direct {v1, p0, v0}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Capabilities;)V

    .line 7
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getNativePtr()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lio/realm/internal/SharedRealm;->nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    .line 8
    iput-object p1, p0, Lio/realm/internal/SharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 9
    new-instance v2, Lio/realm/internal/OsSchemaInfo;

    iget-wide v3, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/SharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/SharedRealm;)V

    iput-object v2, p0, Lio/realm/internal/SharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 10
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 11
    iget-object p1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 12
    iput-object v0, p0, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    .line 13
    iput-object v1, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 14
    iget-wide v1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result p1

    invoke-static {v1, v2, p1}, Lio/realm/internal/SharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method private executePendingRowQueries()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/PendingRow;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/PendingRow;->executeQuery()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/OsRealmConfig$Builder;

    invoke-direct {v0, p0}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    .line 2
    invoke-static {v0}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;)Lio/realm/internal/SharedRealm;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lio/realm/internal/OsRealmConfig$Builder;)Lio/realm/internal/SharedRealm;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/OsRealmConfig$Builder;->build()Lio/realm/internal/OsRealmConfig;

    move-result-object p0

    .line 4
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/ObjectServerFacade;->wrapObjectStoreSessionIfRequired(Lio/realm/RealmConfiguration;)V

    .line 5
    new-instance v0, Lio/realm/internal/SharedRealm;

    invoke-direct {v0, p0}, Lio/realm/internal/SharedRealm;-><init>(Lio/realm/internal/OsRealmConfig;)V

    return-object v0
.end method

.method public static getTemporaryDirectory()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static initialize(Ljava/io/File;)V
    .locals 3

    .line 1
    sget-object v0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lio/realm/internal/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create temporary directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string v1, "/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_3
    invoke-static {v0}, Lio/realm/internal/SharedRealm;->nativeInit(Ljava/lang/String;)V

    .line 8
    sput-object p0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    return-void

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tempDirectory\' must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeBeginTransaction(J)V
.end method

.method private static native nativeCancelTransaction(J)V
.end method

.method private static native nativeCloseSharedRealm(J)V
.end method

.method private static native nativeCommitTransaction(J)V
.end method

.method private static native nativeCompact(J)Z
.end method

.method private static native nativeCreateTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetSchemaInfo(J)J
.end method

.method private static native nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J
.end method

.method private static native nativeGetTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetTableName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(J)J
.end method

.method private static native nativeGetVersionID(J)[J
.end method

.method private static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeIsAutoRefresh(J)Z
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsEmpty(J)Z
.end method

.method private static native nativeIsInTransaction(J)Z
.end method

.method private static native nativeReadGroup(J)J
.end method

.method private static native nativeRefresh(J)V
.end method

.method private static native nativeRegisterSchemaChangedCallback(JLio/realm/internal/SharedRealm$SchemaChangedCallback;)V
.end method

.method private static native nativeRemoveTable(JLjava/lang/String;)V
.end method

.method private static native nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoRefresh(JZ)V
.end method

.method private static native nativeSetVersion(JJ)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStopWaitForChange(J)V
.end method

.method private static native nativeWaitForChange(J)Z
.end method

.method private static native nativeWriteCopy(JLjava/lang/String;[B)V
.end method

.method private static runInitializationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/SharedRealm$InitializationCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/SharedRealm;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/SharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    invoke-interface {p3, v0}, Lio/realm/internal/SharedRealm$InitializationCallback;->onInit(Lio/realm/internal/SharedRealm;)V

    return-void
.end method

.method private static runMigrationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/SharedRealm$MigrationCallback;J)V
    .locals 6

    .line 1
    new-instance v1, Lio/realm/internal/SharedRealm;

    invoke-direct {v1, p0, p1, p2}, Lio/realm/internal/SharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    .line 2
    invoke-virtual {p2}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v4

    move-object v0, p3

    move-wide v2, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lio/realm/internal/SharedRealm$MigrationCallback;->onMigrationNeeded(Lio/realm/internal/SharedRealm;JJ)V

    return-void
.end method


# virtual methods
.method addIterator(Lio/realm/internal/Collection$Iterator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPendingRow(Lio/realm/internal/PendingRow;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->detachIterators()V

    .line 2
    invoke-direct {p0}, Lio/realm/internal/SharedRealm;->executePendingRowQueries()V

    .line 3
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeBeginTransaction(J)V

    return-void
.end method

.method public cancelTransaction()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCancelTransaction(J)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/realm/internal/RealmNotifier;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/SharedRealm;->nativeCloseSharedRealm(J)V

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

.method public commitTransaction()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCommitTransaction(J)V

    return-void
.end method

.method public compact()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCompact(J)Z

    move-result v0

    return v0
.end method

.method public createTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 3

    .line 1
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/SharedRealm;->nativeCreateTable(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object v0
.end method

.method detachIterators()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/Collection$Iterator;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/Collection$Iterator;->detach()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getGroupNative()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeReadGroup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/SharedRealm;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaInfo()Lio/realm/internal/OsSchemaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    return-object v0
.end method

.method public getSchemaVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v0

    .line 2
    new-instance p1, Lio/realm/internal/Table;

    invoke-direct {p1, p0, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeGetTableName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVersionID()Lio/realm/internal/SharedRealm$VersionID;
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersionID(J)[J

    move-result-object v0

    .line 2
    new-instance v1, Lio/realm/internal/SharedRealm$VersionID;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/SharedRealm$VersionID;-><init>(JJ)V

    return-object v1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method invalidateIterators()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/Collection$Iterator;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/Collection$Iterator;->invalidate()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isAutoRefresh()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsAutoRefresh(J)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsClosed(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeRefresh(J)V

    return-void
.end method

.method public registerSchemaChangedCallback(Lio/realm/internal/SharedRealm$SchemaChangedCallback;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeRegisterSchemaChangedCallback(JLio/realm/internal/SharedRealm$SchemaChangedCallback;)V

    return-void
.end method

.method removePendingRow(Lio/realm/internal/PendingRow;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/PendingRow;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 3
    :cond_1
    iget-object v2, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeTable(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeRemoveTable(JLjava/lang/String;)V

    return-void
.end method

.method public renameTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SharedRealm;->nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method public setSchemaVersion(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SharedRealm;->nativeSetVersion(JJ)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public stopWaitForChange()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeStopWaitForChange(J)V

    return-void
.end method

.method public waitForChange()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeWaitForChange(J)Z

    move-result v0

    return v0
.end method

.method public writeCopy(Ljava/io/File;[B)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The destination file must not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SharedRealm;->nativeWriteCopy(JLjava/lang/String;[B)V

    return-void
.end method
