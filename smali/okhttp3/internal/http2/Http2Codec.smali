.class public final Lokhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lc/i;

.field private static final ENCODING:Lc/i;

.field private static final HOST:Lc/i;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lc/i;

.field private static final PROXY_CONNECTION:Lc/i;

.field private static final TE:Lc/i;

.field private static final TRANSFER_ENCODING:Lc/i;

.field private static final UPGRADE:Lc/i;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final connection:Lokhttp3/internal/http2/Http2Connection;

.field private stream:Lokhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    .line 1
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lc/i;

    const-string v0, "host"

    .line 2
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HOST:Lc/i;

    const-string v0, "keep-alive"

    .line 3
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lc/i;

    const-string v0, "proxy-connection"

    .line 4
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lc/i;

    const-string v0, "transfer-encoding"

    .line 5
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lc/i;

    const-string v0, "te"

    .line 6
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->TE:Lc/i;

    const-string v0, "encoding"

    .line 7
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lc/i;

    const-string v0, "upgrade"

    .line 8
    invoke-static {v0}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lc/i;

    const/16 v0, 0xc

    .line 9
    new-array v0, v0, [Lc/i;

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lc/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->HOST:Lc/i;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lc/i;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lc/i;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TE:Lc/i;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lc/i;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lc/i;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lc/i;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lc/i;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lc/i;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lc/i;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lc/i;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 10
    new-array v0, v10, [Lc/i;

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->CONNECTION:Lc/i;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->HOST:Lc/i;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lc/i;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lc/i;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TE:Lc/i;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lc/i;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->ENCODING:Lc/i;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/Http2Codec;->UPGRADE:Lc/i;

    aput-object v1, v0, v9

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    return-void
.end method

.method public static http2HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lc/i;

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lc/i;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lc/i;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lc/i;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lokhttp3/internal/http2/Header;

    sget-object v4, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lc/i;

    invoke-direct {v3, v4, v2}, Lokhttp3/internal/http2/Header;-><init>(Lc/i;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lc/i;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp3/internal/http2/Header;-><init>(Lc/i;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 9
    invoke-virtual {v0, p0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/i;->c(Ljava/lang/String;)Lc/i;

    move-result-object v3

    .line 10
    sget-object v4, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    new-instance v4, Lokhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lc/i;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/http2/Header;

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    .line 4
    iget v5, v0, Lokhttp3/internal/http/StatusLine;->code:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 5
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    .line 6
    :cond_0
    iget-object v6, v5, Lokhttp3/internal/http2/Header;->name:Lc/i;

    .line 7
    iget-object v5, v5, Lokhttp3/internal/http2/Header;->value:Lc/i;

    invoke-virtual {v5}, Lc/i;->h()Ljava/lang/String;

    move-result-object v5

    .line 8
    sget-object v7, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lc/i;

    invoke-virtual {v6, v7}, Lc/i;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    sget-object v7, Lokhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 11
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v6}, Lc/i;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    new-instance p0, Lokhttp3/Response$Builder;

    invoke-direct {p0}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 13
    invoke-virtual {p0, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p0

    iget v1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 14
    invoke-virtual {p0, v1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p0

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 17
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lc/z;
    .locals 0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lc/z;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lc/z;

    move-result-object v0

    invoke-interface {v0}, Lc/z;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->getSource()Lc/A;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lokhttp3/internal/http2/Http2Codec;Lc/A;)V

    .line 2
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lc/s;->a(Lc/A;)Lc/h;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lc/h;)V

    return-object v1
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->takeResponseHeaders()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lokhttp3/internal/Internal;->code(Lokhttp3/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Codec;->http2HeadersList(Lokhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Codec;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->readTimeout()Lc/C;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc/C;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/C;

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Codec;->stream:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->writeTimeout()Lc/C;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc/C;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/C;

    return-void
.end method
