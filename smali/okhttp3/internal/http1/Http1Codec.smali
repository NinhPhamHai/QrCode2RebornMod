.class public final Lokhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lokhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lokhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field final sink:Lc/g;

.field final source:Lc/h;

.field state:I

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lc/h;Lc/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;

    .line 4
    iput-object p2, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 5
    iput-object p3, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lc/h;

    .line 6
    iput-object p4, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lc/g;

    return-void
.end method

.method private getTransferStream(Lokhttp3/Response;)Lc/A;
    .locals 4

    .line 1
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lc/A;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    .line 3
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/internal/http1/Http1Codec;->newChunkedSource(Lokhttp3/HttpUrl;)Lc/A;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lc/A;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lc/A;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lc/z;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1Codec;->newChunkedSink()Lc/z;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lc/z;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method detachTimeout(Lc/l;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc/l;->a()Lc/C;

    move-result-object v0

    .line 2
    sget-object v1, Lc/C;->NONE:Lc/C;

    invoke-virtual {p1, v1}, Lc/l;->a(Lc/C;)Lc/l;

    .line 3
    invoke-virtual {v0}, Lc/C;->clearDeadline()Lc/C;

    .line 4
    invoke-virtual {v0}, Lc/C;->clearTimeout()Lc/C;

    return-void
.end method

.method public finishRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lc/g;

    invoke-interface {v0}, Lc/g;->flush()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lc/g;

    invoke-interface {v0}, Lc/g;->flush()V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChunkedSink()Lc/z;
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lokhttp3/HttpUrl;)Lc/A;
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSink(J)Lc/z;
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSource(J)Lc/A;
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUnknownLengthSource()Lc/A;
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 4
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 5
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1Codec;->getTransferStream(Lokhttp3/Response;)Lc/A;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lc/s;->a(Lc/A;)Lc/h;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lc/h;)V

    return-object v1
.end method

.method public readHeaders()Lokhttp3/Headers;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 2
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lc/h;

    invoke-interface {v1}, Lc/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lc/h;

    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 4
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    .line 5
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 6
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x4

    .line 10
    iput p1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw v0
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lc/g;

    invoke-interface {v0, p2}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lc/g;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lc/g;

    invoke-interface {p1, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 2
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
