.class public Lio/realm/SyncConfiguration;
.super Lio/realm/RealmConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final INVALID_CHARS:[C

.field static final MAX_FILE_NAME_LENGTH:I = 0xff

.field static final MAX_FULL_PATH_LENGTH:I = 0x100


# instance fields
.field private final deleteRealmOnLogout:Z

.field private final errorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private final serverCertificateAssetName:Ljava/lang/String;

.field private final serverCertificateFilePath:Ljava/lang/String;

.field private final serverUrl:Ljava/net/URI;

.field private final syncClientValidateSsl:Z

.field private final user:Lio/realm/SyncUser;

.field private final waitForInitialData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/realm/SyncConfiguration;->INVALID_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x3cs
        0x3es
        0x3as
        0x22s
        0x2fs
        0x5cs
        0x7cs
        0x3fs
        0x2as
    .end array-data
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v15, p0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, v16

    .line 2
    invoke-direct/range {v0 .. v15}, Lio/realm/RealmConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/CompactOnLaunchCallback;)V

    move-object/from16 v1, p15

    .line 3
    iput-object v1, v0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    move-object/from16 v1, p16

    .line 4
    iput-object v1, v0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    move-object/from16 v1, p17

    .line 5
    iput-object v1, v0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    move/from16 v1, p18

    .line 6
    iput-boolean v1, v0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    move/from16 v1, p19

    .line 7
    iput-boolean v1, v0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    move-object/from16 v1, p20

    .line 8
    iput-object v1, v0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 9
    iput-object v1, v0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    move/from16 v1, p22

    .line 10
    iput-boolean v1, v0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;ZLio/realm/SyncConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p22}, Lio/realm/SyncConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/realm/SyncConfiguration;->getServerPath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()[C
    .locals 1

    .line 1
    sget-object v0, Lio/realm/SyncConfiguration;->INVALID_CHARS:[C

    return-object v0
.end method

.method private static getServerPath(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static resolveServerUrl(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const-string v0, "/"

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "/~/"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not replace \'/~/\' with a valid user ID."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 1
    const-class v2, Lio/realm/SyncConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lio/realm/RealmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lio/realm/SyncConfiguration;

    .line 4
    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    iget-boolean v3, p1, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    iget-boolean v3, p1, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    iget-object v3, p1, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v2, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    iget-object v3, p1, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    invoke-virtual {v2, v3}, Lio/realm/SyncUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget-object v2, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    iget-object v3, p1, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 9
    :cond_7
    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 10
    :cond_9
    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_a
    iget-object v2, p1, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_1
    return v1

    .line 11
    :cond_b
    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    iget-boolean p1, p1, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    if-eq v2, p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_2
    return v1
.end method

.method public getErrorHandler()Lio/realm/SyncSession$ErrorHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-object v0
.end method

.method public getServerCertificateAssetName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCertificateFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    return-object v0
.end method

.method public getUser()Lio/realm/SyncUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lio/realm/RealmConfiguration;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/SyncUser;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    add-int/2addr v0, v1

    return v0
.end method

.method isSyncConfiguration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldDeleteRealmOnLogout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    return v0
.end method

.method public shouldWaitForInitialRemoteData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    return v0
.end method

.method public syncClientValidateSsl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/realm/RealmConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteRealmOnLogout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForInitialRemoteData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
