.class public Lio/realm/internal/network/AuthenticateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/network/AuthenticateRequest;->provider:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/realm/internal/network/AuthenticateRequest;->data:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/realm/internal/network/AuthenticateRequest;->appId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/realm/internal/network/AuthenticateRequest;->path:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lio/realm/internal/network/AuthenticateRequest;->userInfo:Ljava/util/Map;

    return-void
.end method

.method public static realmLogin(Lio/realm/internal/objectserver/Token;Ljava/net/URI;)Lio/realm/internal/network/AuthenticateRequest;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/network/AuthenticateRequest;

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-string v1, "realm"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/network/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v6
.end method

.method public static userLogin(Lio/realm/SyncCredentials;)Lio/realm/internal/network/AuthenticateRequest;
    .locals 6

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getIdentityProvider()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserInfo()Ljava/util/Map;

    move-result-object v5

    .line 4
    sget-object v3, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 5
    new-instance p0, Lio/realm/internal/network/AuthenticateRequest;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/network/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null credentials required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userRefresh(Lio/realm/internal/objectserver/Token;Ljava/net/URI;)Lio/realm/internal/network/AuthenticateRequest;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/network/AuthenticateRequest;

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-string v1, "realm"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/network/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v6
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "provider"

    .line 2
    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 3
    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_id"

    .line 4
    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lio/realm/internal/network/AuthenticateRequest;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "path"

    .line 6
    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "user_info"

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/realm/internal/network/AuthenticateRequest;->userInfo:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
