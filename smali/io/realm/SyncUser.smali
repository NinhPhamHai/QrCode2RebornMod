.class public Lio/realm/SyncUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncUser$RequestCallback;,
        Lio/realm/SyncUser$Callback;,
        Lio/realm/SyncUser$Request;,
        Lio/realm/SyncUser$ManagementConfig;
    }
.end annotation


# instance fields
.field private final authenticationUrl:Ljava/net/URL;

.field private final identity:Ljava/lang/String;

.field private final managementConfig:Lio/realm/SyncUser$ManagementConfig;

.field private final realms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/realm/SyncConfiguration;",
            "Lio/realm/internal/objectserver/Token;",
            ">;"
        }
    .end annotation
.end field

.field private refreshToken:Lio/realm/internal/objectserver/Token;


# direct methods
.method constructor <init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    .line 3
    new-instance v0, Lio/realm/SyncUser$ManagementConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/SyncUser$ManagementConfig;-><init>(Lio/realm/SyncUser$1;)V

    iput-object v0, p0, Lio/realm/SyncUser;->managementConfig:Lio/realm/SyncUser$ManagementConfig;

    .line 4
    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->identity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    .line 6
    iput-object p1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-void
.end method

.method static synthetic access$000(Ljava/net/URL;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/realm/SyncUser;->getManagementRealmUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static all()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lio/realm/UserStore;->allUsers()Ljava/util/Collection;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncUser;

    .line 5
    invoke-virtual {v2}, Lio/realm/SyncUser;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static checkLooperThread(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/realm/internal/android/AndroidCapabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    return-void
.end method

.method public static currentUser()Lio/realm/SyncUser;
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/UserStore;->getCurrent()Lio/realm/SyncUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/realm/SyncUser;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lio/realm/SyncUser;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/net/URL;

    const-string v2, "authUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v2, "userToken"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object v0

    .line 4
    new-instance v2, Lio/realm/SyncUser;

    invoke-direct {v2, v0, v1}, Lio/realm/SyncUser;-><init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL in JSON not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse user json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getManagementRealmUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

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
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/~/__management"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create URL to the management Realm"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static login(Lio/realm/SyncCredentials;Ljava/lang/String;)Lio/realm/SyncUser;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/auth"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getIdentityProvider()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_access_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_token"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserInfo()Ljava/util/Map;

    move-result-object p0

    const-string v2, "_isAdmin"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 8
    invoke-static {p1, v1, p0}, Lio/realm/internal/network/AuthenticateResponse;->createValidResponseWithUser(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object p1

    .line 10
    invoke-interface {p1, p0, v0}, Lio/realm/internal/network/AuthenticationServer;->loginUser(Lio/realm/SyncCredentials;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Lio/realm/SyncUser;

    invoke-virtual {p0}, Lio/realm/internal/network/AuthenticateResponse;->getRefreshToken()Lio/realm/internal/objectserver/Token;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lio/realm/SyncUser;-><init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V

    const-string p0, "Succeeded authenticating user.\n%s"

    .line 13
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lio/realm/log/RealmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/realm/UserStore;->put(Lio/realm/SyncUser;)V

    .line 15
    invoke-static {p1}, Lio/realm/SyncManager;->notifyUserLoggedIn(Lio/realm/SyncUser;)V

    return-object p1

    :cond_2
    const-string p1, "Failed authenticating user.\n%s"

    .line 16
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lio/realm/log/RealmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    throw p0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Lio/realm/ObjectServerError;

    sget-object v0, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {p1, v0, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static loginAsync(Lio/realm/SyncCredentials;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .locals 2

    const-string v0, "Asynchronous login is only possible from looper threads."

    .line 1
    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/realm/SyncUser$1;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, p2, p0, p1}, Lio/realm/SyncUser$1;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Lio/realm/SyncCredentials;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addRealm(Lio/realm/SyncConfiguration;Lio/realm/internal/objectserver/Token;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/realm/SyncSession;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/realm/SyncManager;->getAllSessions(Lio/realm/SyncUser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public changePassword(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lio/realm/internal/network/AuthenticationServer;->changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not-null \'newPassword\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 6
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Lio/realm/SyncUser;->changePassword(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lio/realm/SyncUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lio/realm/internal/network/AuthenticationServer;->changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "User need to be admin in order to change another user\'s password."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "None empty \'userId\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not-null \'newPassword\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changePasswordAsync(Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .locals 2

    const-string v0, "Asynchronous changing password is only possible from looper threads."

    .line 1
    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lio/realm/SyncUser$3;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p0, v1, p2, p1}, Lio/realm/SyncUser$3;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'callback\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changePasswordAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .locals 7

    const-string v0, "Asynchronous changing password is only possible from looper threads."

    .line 5
    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    new-instance v0, Lio/realm/SyncUser$4;

    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/SyncUser$4;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'callback\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v1, Lio/realm/SyncUser;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lio/realm/SyncUser;

    .line 3
    iget-object v1, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getAccessToken()Lio/realm/internal/objectserver/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-object v0
.end method

.method getAccessToken(Lio/realm/SyncConfiguration;)Lio/realm/internal/objectserver/Token;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/objectserver/Token;

    return-object p1
.end method

.method public getAuthenticationUrl()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getManagementRealm()Lio/realm/Realm;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->managementConfig:Lio/realm/SyncUser$ManagementConfig;

    invoke-virtual {v0, p0}, Lio/realm/SyncUser$ManagementConfig;->initAndGetManagementRealmConfig(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionManager()Lio/realm/PermissionManager;
    .locals 2

    .line 1
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    invoke-virtual {v0}, Lio/realm/internal/android/AndroidCapabilities;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/realm/PermissionManager;->getInstance(Lio/realm/SyncUser;)Lio/realm/PermissionManager;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The PermissionManager can only be opened from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->isAdmin()Z

    move-result v0

    return v0
.end method

.method isRealmAuthenticated(Lio/realm/SyncConfiguration;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/objectserver/Token;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/realm/UserStore;->isActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logout()V
    .locals 5

    .line 1
    const-class v0, Lio/realm/Realm;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/realm/UserStore;->isActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/realm/UserStore;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncConfiguration;

    .line 6
    invoke-static {v2}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    .line 11
    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    new-instance v4, Lio/realm/SyncUser$2;

    invoke-direct {v4, p0, v1, v2}, Lio/realm/SyncUser$2;-><init>(Lio/realm/SyncUser;Lio/realm/internal/network/AuthenticationServer;Lio/realm/internal/objectserver/Token;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public retrieveInfoForUser(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUserInfo;
    .locals 3

    .line 1
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lio/realm/SyncUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lio/realm/internal/network/AuthenticationServer;->retrieveUser(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object p2

    sget-object v0, Lio/realm/ErrorCode;->NOT_FOUND:Lio/realm/ErrorCode;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    invoke-static {p1}, Lio/realm/SyncUserInfo;->fromLookupUserIdResponse(Lio/realm/internal/network/LookupUserIdResponse;)Lio/realm/SyncUserInfo;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SyncUser needs to be admin in order to lookup other users ID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'provider\' cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'providerUserIdentity\' cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retrieveInfoForUserAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$RequestCallback;)Lio/realm/RealmAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$RequestCallback<",
            "Lio/realm/SyncUserInfo;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    const-string v0, "Asynchronously retrieving user is only possible from looper threads."

    .line 1
    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Lio/realm/SyncUser$6;

    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/SyncUser$6;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$RequestCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'callback\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retrieveUser(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUser;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lio/realm/SyncUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lio/realm/internal/network/AuthenticationServer;->retrieveUser(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object p2

    sget-object v0, Lio/realm/ErrorCode;->NOT_FOUND:Lio/realm/ErrorCode;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object p2

    invoke-virtual {p1}, Lio/realm/internal/network/LookupUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lio/realm/UserStore;->get(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    .line 10
    :cond_2
    new-instance p2, Lio/realm/internal/objectserver/Token;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lio/realm/internal/network/LookupUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin()Z

    move-result v7

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    .line 11
    new-instance p1, Lio/realm/SyncUser;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/realm/SyncUser;-><init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SyncUser needs to be admin in order to lookup other users ID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "None empty \'providerId\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not-null \'provider\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retrieveUserAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Asynchronously retrieving user id is only possible from looper threads."

    .line 1
    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Lio/realm/SyncUser$5;

    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/SyncUser$5;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'callback\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setRefreshToken(Lio/realm/internal/objectserver/Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "authUrl"

    .line 2
    iget-object v2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userToken"

    .line 3
    iget-object v2, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {v2}, Lio/realm/internal/objectserver/Token;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not convert SyncUser to JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UserId: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AuthUrl: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
