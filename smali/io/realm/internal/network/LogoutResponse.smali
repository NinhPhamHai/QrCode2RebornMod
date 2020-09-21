.class public Lio/realm/internal/network/LogoutResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Logout response - Success"

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lio/realm/internal/network/AuthServerResponse;->setError(Lio/realm/ObjectServerError;)V

    return-void
.end method

.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logout response - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/ObjectServerError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/internal/network/AuthServerResponse;->setError(Lio/realm/ObjectServerError;)V

    return-void
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LogoutResponse;
    .locals 1

    .line 7
    new-instance v0, Lio/realm/internal/network/LogoutResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/LogoutResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/LogoutResponse;
    .locals 2

    .line 8
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/LogoutResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LogoutResponse;

    move-result-object p0

    return-object p0
.end method

.method static from(Lokhttp3/Response;)Lio/realm/internal/network/LogoutResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lio/realm/internal/network/LogoutResponse;

    invoke-direct {p0}, Lio/realm/internal/network/LogoutResponse;-><init>()V

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lio/realm/internal/network/LogoutResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-static {v0, p0}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/realm/internal/network/LogoutResponse;-><init>(Lio/realm/ObjectServerError;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 6
    new-instance p0, Lio/realm/internal/network/LogoutResponse;

    invoke-direct {p0, v0}, Lio/realm/internal/network/LogoutResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object p0
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v0

    sget-object v1, Lio/realm/ErrorCode;->EXPIRED_REFRESH_TOKEN:Lio/realm/ErrorCode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
