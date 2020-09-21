.class public Lio/realm/internal/network/LookupUserIdResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "SourceFile"


# static fields
.field private static final JSON_FIELD_PROVIDER:Ljava/lang/String; = "provider"

.field private static final JSON_FIELD_PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field private static final JSON_FIELD_USER:Ljava/lang/String; = "user"

.field private static final JSON_FIELD_USER_ID:Ljava/lang/String; = "id"

.field private static final JSON_FIELD_USER_IS_ADMIN:Ljava/lang/String; = "isAdmin"


# instance fields
.field private final isAdmin:Ljava/lang/Boolean;

.field private final provider:Ljava/lang/String;

.field private final providerId:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LookupUserIdResponse - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/internal/network/AuthServerResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 4
    iput-object p1, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/realm/internal/network/LookupUserIdResponse;->providerId:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lio/realm/internal/network/LookupUserIdResponse;->provider:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lio/realm/internal/network/LookupUserIdResponse;->userId:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string v0, "isAdmin"

    .line 9
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "provider"

    .line 11
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "provider_id"

    .line 12
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "user"

    .line 13
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "id"

    .line 14
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 16
    :goto_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Identity %s; Path %b"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v2

    aput-object v0, v8, v1

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "user = null"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    move-object v6, v0

    :goto_1
    move-object v4, v0

    move-object v0, v3

    move-object v3, v5

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v4, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v0, v4, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 18
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/realm/ObjectServerError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "Error %s"

    invoke-static {p1, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v3

    move-object v4, p1

    move-object v6, v4

    .line 19
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LookupUserIdResponse. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0, v0}, Lio/realm/internal/network/AuthServerResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 21
    iput-object v3, p0, Lio/realm/internal/network/LookupUserIdResponse;->providerId:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/realm/internal/network/LookupUserIdResponse;->provider:Ljava/lang/String;

    .line 23
    iput-object v6, p0, Lio/realm/internal/network/LookupUserIdResponse;->userId:Ljava/lang/String;

    .line 24
    iput-object v4, p0, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin:Ljava/lang/Boolean;

    return-void
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LookupUserIdResponse;
    .locals 1

    .line 7
    new-instance v0, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/LookupUserIdResponse;
    .locals 2

    .line 8
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/LookupUserIdResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object p0

    return-object p0
.end method

.method static from(Lokhttp3/Response;)Lio/realm/internal/network/LookupUserIdResponse;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-static {v0, p0}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v1

    .line 4
    :cond_0
    new-instance p0, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-direct {p0, v0}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 6
    new-instance p0, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-direct {p0, v0}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object p0
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->providerId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
