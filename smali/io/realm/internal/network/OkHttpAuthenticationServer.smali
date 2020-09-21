.class public Lio/realm/internal/network/OkHttpAuthenticationServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/network/AuthenticationServer;


# static fields
.field private static final ACTION_CHANGE_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACTION_LOGOUT:Ljava/lang/String; = "revoke"

.field private static final ACTION_LOOKUP_USER_ID:Ljava/lang/String; = "api/providers"

.field public static final JSON:Lokhttp3/MediaType;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (authenticate): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v0, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/realm/internal/network/AuthenticateResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1

    return-object p1
.end method

.method private static buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    const-string v0, "/"

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 3
    :cond_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static buildLookupUserIdUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const-string v0, "/"

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 4
    :goto_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/accounts/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private changePassword(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordResponse;
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (changePassword): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v0, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/realm/internal/network/ChangePasswordResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1

    return-object p1
.end method

.method private logout(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/LogoutResponse;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (logout): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v0, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lio/realm/internal/network/LogoutResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/LogoutResponse;

    move-result-object p1

    return-object p1
.end method

.method private lookupUserId(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/LookupUserIdResponse;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (lookupUserId): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/realm/internal/network/LookupUserIdResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object p1

    return-object p1
.end method

.method private newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "application/json"

    const-string v1, "Content-Type"

    .line 3
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Accept"

    .line 4
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p1, p2, p3}, Lio/realm/internal/network/ChangePasswordRequest;->create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/network/ChangePasswordRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 5
    invoke-static {p4, p2}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->changePassword(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/realm/internal/network/ChangePasswordResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1

    return-object p1
.end method

.method public changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lio/realm/internal/network/ChangePasswordRequest;->create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/network/ChangePasswordRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 2
    invoke-static {p3, p2}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->changePassword(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/realm/internal/network/ChangePasswordResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object p1

    return-object p1
.end method

.method public loginToRealm(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lio/realm/internal/network/AuthenticateRequest;->realmLogin(Lio/realm/internal/objectserver/Token;Ljava/net/URI;)Lio/realm/internal/network/AuthenticateRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p3, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/realm/internal/network/AuthenticateResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1

    return-object p1
.end method

.method public loginUser(Lio/realm/SyncCredentials;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/AuthenticateRequest;->userLogin(Lio/realm/SyncCredentials;)Lio/realm/internal/network/AuthenticateRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/realm/internal/network/AuthenticateResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1

    return-object p1
.end method

.method public logout(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)Lio/realm/internal/network/LogoutResponse;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/LogoutRequest;->create(Lio/realm/internal/objectserver/Token;)Lio/realm/internal/network/LogoutRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/network/LogoutRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "revoke"

    .line 2
    invoke-static {p2, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->logout(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/LogoutResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/realm/internal/network/LogoutResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/LogoutResponse;

    move-result-object p1

    return-object p1
.end method

.method public refreshUser(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lio/realm/internal/network/AuthenticateRequest;->userRefresh(Lio/realm/internal/objectserver/Token;Ljava/net/URI;)Lio/realm/internal/network/AuthenticateRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p3, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/realm/internal/network/AuthenticateResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object p1

    return-object p1
.end method

.method public retrieveUser(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/LookupUserIdResponse;
    .locals 1

    :try_start_0
    const-string v0, "api/providers"

    .line 1
    invoke-static {p4, v0, p2, p3}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildLookupUserIdUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->lookupUserId(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/realm/internal/network/LookupUserIdResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object p1

    return-object p1
.end method
