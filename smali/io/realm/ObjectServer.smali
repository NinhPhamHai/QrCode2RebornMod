.class Lio/realm/ObjectServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "unknown"

    .line 3
    :goto_0
    sget-boolean v2, Lio/realm/SyncManager$Debug;->separatedDirForSyncManager:Z

    if-eqz v2, :cond_2

    :try_start_1
    const-string v2, "remote_sync_"

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 6
    invoke-static {v2, v3, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/realm/SyncManager;->nativeInitializeSyncManager(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Directory \'%s\' for SyncManager cannot be created. "

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    .line 12
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Temp file \'%s\' cannot be deleted."

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    .line 15
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/realm/SyncManager;->nativeInitializeSyncManager(Ljava/lang/String;)V

    .line 18
    :goto_1
    new-instance p0, Lio/realm/RealmFileUserStore;

    invoke-direct {p0}, Lio/realm/RealmFileUserStore;-><init>()V

    .line 19
    invoke-static {v1, p0}, Lio/realm/SyncManager;->init(Ljava/lang/String;Lio/realm/UserStore;)V

    return-void
.end method
