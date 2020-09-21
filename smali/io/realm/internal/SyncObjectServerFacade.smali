.class public Lio/realm/internal/SyncObjectServerFacade;
.super Lio/realm/internal/ObjectServerFacade;
.source "SourceFile"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final WRONG_TYPE_OF_CONFIGURATION:Ljava/lang/String; = "\'configuration\' has to be an instance of \'SyncConfiguration\'."

.field private static applicationContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile removeSessionMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/internal/ObjectServerFacade;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private invokeRemoveSession(Lio/realm/SyncConfiguration;)V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/realm/internal/SyncObjectServerFacade;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    sget-object v3, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 4
    const-class v3, Lio/realm/SyncManager;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lio/realm/SyncConfiguration;

    aput-object v5, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "removeSession"

    :try_start_2
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    sput-object v3, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 10
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not invoke method to remove session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 11
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not lookup method to remove session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public downloadRemoteChanges(Lio/realm/RealmConfiguration;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/SyncConfiguration;

    .line 3
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->shouldWaitForInitialRemoteData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lio/realm/SyncSession;->downloadAllServerChanges()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lio/realm/exceptions/DownloadingRealmInterruptedException;

    invoke-direct {v1, p1, v0}, Lio/realm/exceptions/DownloadingRealmInterruptedException;-><init>(Lio/realm/SyncConfiguration;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public getSyncServerCertificateAssetName(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/SyncConfiguration;

    .line 3
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getServerCertificateAssetName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'configuration\' has to be an instance of \'SyncConfiguration\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSyncServerCertificateFilePath(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/SyncConfiguration;

    .line 3
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getServerCertificateFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'configuration\' has to be an instance of \'SyncConfiguration\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/SyncConfiguration;

    .line 3
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getUser()Lio/realm/SyncUser;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lio/realm/SyncUser;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->syncClientValidateSsl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getServerCertificateFilePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    return-object v1

    .line 9
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    const-string v0, "Could not initialize the Realm Object Server"

    const-string v1, "io.realm.ObjectServer"

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "init"

    const/4 v3, 0x1

    .line 2
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 4
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 6
    sput-object p1, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    .line 7
    sget-object p1, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    new-instance v0, Lio/realm/internal/network/NetworkStateReceiver;

    invoke-direct {v0}, Lio/realm/internal/network/NetworkStateReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-direct {v1, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 9
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-direct {v1, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 10
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-direct {v1, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p1

    .line 11
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-direct {v1, v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public realmClosed(Lio/realm/RealmConfiguration;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/SyncConfiguration;

    .line 3
    invoke-direct {p0, p1}, Lio/realm/internal/SyncObjectServerFacade;->invokeRemoveSession(Lio/realm/SyncConfiguration;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'configuration\' has to be an instance of \'SyncConfiguration\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wasDownloadInterrupted(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lio/realm/exceptions/DownloadingRealmInterruptedException;

    return p1
.end method

.method public wrapObjectStoreSessionIfRequired(Lio/realm/RealmConfiguration;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/SyncConfiguration;

    invoke-static {p1}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    :cond_0
    return-void
.end method
