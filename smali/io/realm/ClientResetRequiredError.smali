.class public Lio/realm/ClientResetRequiredError;
.super Lio/realm/ObjectServerError;
.source "SourceFile"


# instance fields
.field private final backupFile:Ljava/io/File;

.field private final configuration:Lio/realm/RealmConfiguration;

.field private final originalFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lio/realm/ClientResetRequiredError;->configuration:Lio/realm/RealmConfiguration;

    .line 3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/realm/ClientResetRequiredError;->backupFile:Ljava/io/File;

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-virtual {p4}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/realm/ClientResetRequiredError;->originalFile:Ljava/io/File;

    return-void
.end method

.method private native nativeExecuteClientReset(Ljava/lang/String;)V
.end method


# virtual methods
.method public executeClientReset()V
    .locals 3

    .line 1
    const-class v0, Lio/realm/Realm;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/realm/ClientResetRequiredError;->configuration:Lio/realm/RealmConfiguration;

    invoke-static {v1}, Lio/realm/Realm;->getGlobalInstanceCount(Lio/realm/RealmConfiguration;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/realm/ClientResetRequiredError;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/realm/ClientResetRequiredError;->nativeExecuteClientReset(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Realm has not been fully closed. Client Reset cannot run before all instances have been closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackupFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ClientResetRequiredError;->backupFile:Ljava/io/File;

    return-object v0
.end method

.method public getOriginalFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ClientResetRequiredError;->originalFile:Ljava/io/File;

    return-object v0
.end method
