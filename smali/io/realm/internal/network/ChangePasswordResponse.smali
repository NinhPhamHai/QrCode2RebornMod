.class public Lio/realm/internal/network/ChangePasswordResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    return-void
.end method

.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 4
    iput-object p1, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    return-void
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/ChangePasswordResponse;
    .locals 1

    .line 7
    new-instance v0, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/ChangePasswordResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/ChangePasswordResponse;
    .locals 2

    .line 8
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/ChangePasswordResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p0

    return-object p0
.end method

.method static from(Lokhttp3/Response;)Lio/realm/internal/network/ChangePasswordResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-direct {p0}, Lio/realm/internal/network/ChangePasswordResponse;-><init>()V

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-static {v0, p0}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/realm/internal/network/ChangePasswordResponse;-><init>(Lio/realm/ObjectServerError;)V
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
    new-instance p0, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-direct {p0, v0}, Lio/realm/internal/network/ChangePasswordResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object p0
.end method
