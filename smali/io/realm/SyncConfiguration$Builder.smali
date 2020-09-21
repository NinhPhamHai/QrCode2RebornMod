.class public final Lio/realm/SyncConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private debugSchema:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultFolder:Ljava/io/File;

.field private defaultLocalFileName:Ljava/lang/String;

.field private deleteRealmOnLogout:Z

.field private directory:Ljava/io/File;

.field private durability:Lio/realm/internal/OsRealmConfig$Durability;

.field private errorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private fileName:Ljava/lang/String;

.field private initialDataTransaction:Lio/realm/Realm$Transaction;

.field private key:[B

.field private modules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private overrideDefaultFolder:Z

.field private overrideDefaultLocalFileName:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private readOnly:Z

.field private rxFactory:Lio/realm/rx/RxObservableFactory;

.field private schemaVersion:J

.field private serverCertificateAssetName:Ljava/lang/String;

.field private serverCertificateFilePath:Ljava/lang/String;

.field private serverUrl:Ljava/net/URI;

.field private syncClientValidateSsl:Z

.field private user:Lio/realm/SyncUser;

.field private waitForServerChanges:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/realm/SyncUser;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultFolder:Z

    .line 4
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultLocalFileName:Z

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lio/realm/SyncConfiguration$Builder;->schemaVersion:J

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    .line 7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    .line 8
    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    const-string v1, "^[A-Za-z0-9_\\-\\.]+$"

    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->pattern:Ljava/util/regex/Pattern;

    .line 10
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    .line 11
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    .line 12
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->deleteRealmOnLogout:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    .line 14
    sget-object v0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    if-eqz p1, :cond_1

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "realm-object-server"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->defaultFolder:Ljava/io/File;

    .line 17
    invoke-static {}, Lio/realm/Realm;->getDefaultModule()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/Realm;->getDefaultModule()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    invoke-direct {p0, p2}, Lio/realm/SyncConfiguration$Builder;->validateAndSet(Lio/realm/SyncUser;)V

    .line 20
    invoke-direct {p0, p3}, Lio/realm/SyncConfiguration$Builder;->validateAndSet(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Call `Realm.init(Context)` before creating a SyncConfiguration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lio/realm/SyncUser;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lio/realm/SyncConfiguration$Builder;-><init>(Landroid/content/Context;Lio/realm/SyncUser;Ljava/lang/String;)V

    return-void
.end method

.method private MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    .line 5
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lio/realm/exceptions/RealmException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Lio/realm/exceptions/RealmException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private addModule(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SyncConfiguration$Builder;->checkModule(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkModule(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/annotations/RealmModule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a RealmModule. Add @RealmModule to the class definition."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAndSet(Lio/realm/SyncUser;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lio/realm/SyncUser;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "User not authenticated or authentication expired."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null `user` required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateAndSet(Ljava/lang/String;)V
    .locals 12

    const-string v0, "Invalid URI: "

    if-eqz p1, :cond_d

    .line 5
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "realms"

    const-string v3, "realm"

    const-string v4, "https"

    if-nez v1, :cond_1

    .line 7
    :try_start_2
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "http"

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move-object v5, v1

    .line 11
    :goto_1
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v7, v1

    .line 13
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "/"

    if-eqz v1, :cond_5

    .line 14
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_5
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 17
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 18
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v8

    if-eqz v1, :cond_6

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, ""

    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    move-object v9, v1

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 20
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 21
    invoke-virtual {v1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v11

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    .line 22
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 24
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_a

    .line 25
    aget-object v3, v0, v2

    const-string v4, "~"

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const-string v4, ".."

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 28
    iget-object v4, p0, Lio/realm/SyncConfiguration$Builder;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 30
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The URI must only contain characters 0-9, a-z, A-Z, ., _, and -: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The URI has an invalid segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_a
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    const-string v1, ".realm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    const-string v1, ".realm.lock"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    const-string v1, ".realm.management"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 36
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The URI must not end with \'.realm\', \'.realm.lock\' or \'.realm.management: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 40
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'uri\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public build()Lio/realm/SyncConfiguration;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    if-eqz v1, :cond_10

    .line 2
    iget-boolean v1, v0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    if-nez v1, :cond_1

    .line 4
    iget-boolean v1, v0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A read-only Realms must be provided by some source. \'waitForInitialRemoteData()\' wasn\'t enabled which is currently the only supported source."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    :goto_0
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The serverUrl contains a /~/, but the user does not have an identity. Most likely it hasn\'t been authenticated yet or has been created directly from an access token. Use a path without /~/."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    :goto_1
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    if-nez v1, :cond_5

    invoke-static {}, Lio/realm/RealmConfiguration;->isRxJavaAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    new-instance v1, Lio/realm/rx/RealmObservableFactory;

    invoke-direct {v1}, Lio/realm/rx/RealmObservableFactory;-><init>()V

    iput-object v1, v0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    .line 11
    :cond_5
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/realm/SyncConfiguration;->resolveServerUrl(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v19

    .line 12
    iget-boolean v1, v0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultFolder:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->directory:Ljava/io/File;

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->defaultFolder:Ljava/io/File;

    .line 13
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v3}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lio/realm/SyncConfiguration;->access$000(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    iget-boolean v2, v0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultLocalFileName:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->fileName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    .line 16
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x100

    if-le v4, v8, :cond_9

    .line 18
    invoke-direct {v0, v2}, Lio/realm/SyncConfiguration$Builder;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_9

    .line 21
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v4}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_8

    goto :goto_4

    .line 24
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v5, [Ljava/lang/Object;

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v6

    const-string v1, "Full path name must not exceed %d characters: %s"

    .line 26
    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    move-object v4, v3

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-gt v1, v3, :cond_f

    .line 28
    invoke-static {}, Lio/realm/SyncConfiguration;->access$100()[C

    move-result-object v1

    array-length v3, v1

    move-object v5, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_a

    aget-char v8, v1, v2

    const/16 v9, 0x5f

    .line 29
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 30
    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 31
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create directory for saving the Realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_c
    :goto_6
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    invoke-static {v1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 33
    iget-boolean v1, v0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    if-eqz v1, :cond_d

    .line 34
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateFilePath:Ljava/lang/String;

    goto :goto_7

    .line 36
    :cond_d
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "SSL Verification is disabled, the provided server certificate will not be used."

    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_e
    :goto_7
    new-instance v1, Lio/realm/SyncConfiguration;

    move-object v3, v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-static {v2}, Lio/realm/RealmConfiguration;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lio/realm/SyncConfiguration$Builder;->key:[B

    iget-wide v9, v0, Lio/realm/SyncConfiguration$Builder;->schemaVersion:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lio/realm/SyncConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    iget-object v14, v0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    .line 39
    invoke-static {v2, v14}, Lio/realm/RealmConfiguration;->createSchemaMediator(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/RealmProxyMediator;

    move-result-object v14

    iget-object v15, v0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    move-object/from16 v16, v2

    iget-boolean v2, v0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    move/from16 v17, v2

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    move-object/from16 v18, v2

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    move-object/from16 v20, v2

    iget-boolean v2, v0, Lio/realm/SyncConfiguration$Builder;->deleteRealmOnLogout:Z

    move/from16 v21, v2

    iget-boolean v2, v0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    move/from16 v22, v2

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateFilePath:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-boolean v2, v0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    move/from16 v25, v2

    const/16 v26, 0x0

    invoke-direct/range {v3 .. v26}, Lio/realm/SyncConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;ZLio/realm/SyncConfiguration$1;)V

    return-object v1

    .line 40
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "File name exceed %d characters: %d"

    .line 43
    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "serverUrl() and user() are both required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public directory(Ljava/io/File;)Lio/realm/SyncConfiguration$Builder;
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "."

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create the specified directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->directory:Ljava/io/File;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultFolder:Z

    return-object p0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Realm directory is not writable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'directory\' is a file, not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'directory\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disableSSLVerification()Lio/realm/SyncConfiguration$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    return-object p0
.end method

.method public encryptionKey([B)Lio/realm/SyncConfiguration$Builder;
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->key:[B

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "The provided key must be %s bytes. Yours was: %s"

    .line 5
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null key must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'errorHandler\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inMemory()Lio/realm/SyncConfiguration$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    return-object p0
.end method

.method public initialData(Lio/realm/Realm$Transaction;)Lio/realm/SyncConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    return-object p0
.end method

.method public varargs modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/SyncConfiguration$Builder;->addModule(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 4
    invoke-direct {p0, v1}, Lio/realm/SyncConfiguration$Builder;->addModule(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/realm/SyncConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->fileName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultLocalFileName:Z

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty filename must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readOnly()Lio/realm/SyncConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    return-object p0
.end method

.method public rxFactory(Lio/realm/rx/RxObservableFactory;)Lio/realm/SyncConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    return-object p0
.end method

.method varargs schema(Ljava/lang/Class;[Ljava/lang/Class;)Lio/realm/SyncConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/SyncConfiguration$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    sget-object v1, Lio/realm/RealmConfiguration;->DEFAULT_MODULE_MEDIATOR:Lio/realm/internal/RealmProxyMediator;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A non-null class must be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public schemaVersion(J)Lio/realm/SyncConfiguration$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lio/realm/SyncConfiguration$Builder;->schemaVersion:J

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public trustedRootCA(Ljava/lang/String;)Lio/realm/SyncConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty filename must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitForInitialRemoteData()Lio/realm/SyncConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    return-object p0
.end method
