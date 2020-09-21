.class Lio/realm/SyncUser$ManagementConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagementConfig"
.end annotation


# instance fields
.field private managementRealmConfig:Lio/realm/SyncConfiguration;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/SyncUser$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/realm/SyncUser$ManagementConfig;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized initAndGetManagementRealmConfig(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/SyncUser$ManagementConfig;->managementRealmConfig:Lio/realm/SyncConfiguration;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/realm/SyncConfiguration$Builder;

    .line 3
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lio/realm/SyncUser;->access$000(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance v1, Lio/realm/SyncUser$ManagementConfig$1;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncUser$ManagementConfig$1;-><init>(Lio/realm/SyncUser$ManagementConfig;Lio/realm/SyncUser;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object p1

    new-instance v0, Lio/realm/internal/permissions/ManagementModule;

    invoke-direct {v0}, Lio/realm/internal/permissions/ManagementModule;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/realm/SyncUser$ManagementConfig;->managementRealmConfig:Lio/realm/SyncConfiguration;

    .line 7
    :cond_0
    iget-object p1, p0, Lio/realm/SyncUser$ManagementConfig;->managementRealmConfig:Lio/realm/SyncConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
