.class public Lio/realm/internal/network/AuthenticateResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "SourceFile"


# static fields
.field private static final JSON_FIELD_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final JSON_FIELD_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"


# instance fields
.field private final accessToken:Lio/realm/internal/objectserver/Token;

.field private final refreshToken:Lio/realm/internal/objectserver/Token;


# direct methods
.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticateResponse - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/internal/network/AuthServerResponse;->setError(Lio/realm/ObjectServerError;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/realm/internal/network/AuthenticateResponse;->accessToken:Lio/realm/internal/objectserver/Token;

    .line 5
    iput-object p1, p0, Lio/realm/internal/network/AuthenticateResponse;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string v0, "refresh_token"

    const-string v1, "access_token"

    .line 6
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    .line 10
    :goto_0
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-nez p1, :cond_2

    const-string v1, "accessToken = null"

    goto :goto_2

    .line 12
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Identity %s; Path %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->identity()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->path()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    goto :goto_3

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v0, v1, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 14
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/realm/ObjectServerError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Error %s"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v4

    .line 15
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AuthenticateResponse. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v0}, Lio/realm/internal/network/AuthServerResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 17
    iput-object p1, p0, Lio/realm/internal/network/AuthenticateResponse;->accessToken:Lio/realm/internal/objectserver/Token;

    .line 18
    iput-object v4, p0, Lio/realm/internal/network/AuthenticateResponse;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-void
.end method

.method public static createValidResponseWithUser(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/internal/network/AuthenticateResponse;
    .locals 11

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "refresh_token"

    .line 2
    new-instance v10, Lio/realm/internal/objectserver/Token;

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    sget-object v8, Lio/realm/internal/objectserver/Token$Permission;->ALL:[Lio/realm/internal/objectserver/Token$Permission;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p0

    move v9, p2

    invoke-direct/range {v2 .. v9}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    invoke-virtual {v10}, Lio/realm/internal/objectserver/Token;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance p0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 1

    .line 8
    new-instance v0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 2

    .line 9
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/AuthenticateResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 1

    .line 7
    new-instance v0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lokhttp3/Response;)Lio/realm/internal/network/AuthenticateResponse;
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
    new-instance v1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-static {v0, p0}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v1

    .line 4
    :cond_0
    new-instance p0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {p0, v0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 6
    new-instance p0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {p0, v0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Lio/realm/internal/objectserver/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/AuthenticateResponse;->accessToken:Lio/realm/internal/objectserver/Token;

    return-object v0
.end method

.method public getRefreshToken()Lio/realm/internal/objectserver/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/AuthenticateResponse;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-object v0
.end method
