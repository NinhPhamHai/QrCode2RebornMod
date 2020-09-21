.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc/A;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lc/s;->a(Lc/A;)Lc/h;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 5
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 6
    invoke-static {v0}, Lokhttp3/Cache;->readInt(Lc/h;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 7
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 9
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    iput-object v2, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 11
    iget v2, v1, Lokhttp3/internal/http/StatusLine;->code:I

    iput v2, p0, Lokhttp3/Cache$Entry;->code:I

    .line 12
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 13
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 14
    invoke-static {v0}, Lokhttp3/Cache;->readInt(Lc/h;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 15
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_1
    sget-object v2, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    sget-object v3, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    sget-object v4, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 19
    sget-object v4, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    .line 20
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    .line 21
    :goto_2
    iput-wide v6, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    if-eqz v3, :cond_3

    .line 22
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 23
    :cond_3
    iput-wide v4, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 24
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 25
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 26
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    .line 28
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    .line 30
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->readCertificateList(Lc/h;)Ljava/util/List;

    move-result-object v3

    .line 31
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->readCertificateList(Lc/h;)Ljava/util/List;

    move-result-object v4

    .line 32
    invoke-interface {v0}, Lc/h;->g()Z

    move-result v5

    if-nez v5, :cond_4

    .line 33
    invoke-interface {v0}, Lc/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v2

    .line 34
    :cond_4
    invoke-static {v2, v1, v3, v4}, Lokhttp3/Handshake;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    goto :goto_3

    .line 35
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    iput-object v2, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_3
    invoke-interface {p1}, Lc/A;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lc/A;->close()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 41
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 43
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$Entry;->code:I

    .line 44
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 46
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 47
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 48
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method private isHttps()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lc/h;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lokhttp3/Cache;->readInt(Lc/h;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 5
    invoke-interface {p1}, Lc/h;->d()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lc/f;

    invoke-direct {v5}, Lc/f;-><init>()V

    .line 7
    invoke-static {v4}, Lc/i;->a(Ljava/lang/String;)Lc/i;

    move-result-object v4

    invoke-virtual {v5, v4}, Lc/f;->a(Lc/i;)Lc/f;

    .line 8
    invoke-virtual {v5}, Lc/f;->k()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private writeCertList(Lc/g;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/g;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lc/g;->c(J)Lc/g;

    move-result-object v0

    const/16 v1, 0xa

    .line 2
    invoke-interface {v0, v1}, Lc/g;->writeByte(I)Lc/g;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 5
    invoke-static {v3}, Lc/i;->a([B)Lc/i;

    move-result-object v3

    invoke-virtual {v3}, Lc/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {p1, v3}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v3

    .line 7
    invoke-interface {v3, v1}, Lc/g;->writeByte(I)Lc/g;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 3
    invoke-static {p2, v0, p1}, Lokhttp3/internal/http/HttpHeaders;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 6
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 8
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 10
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lokhttp3/Cache$Entry;->code:I

    .line 11
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 13
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 15
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 16
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 17
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lc/z;

    move-result-object p1

    invoke-static {p1}, Lc/s;->a(Lc/z;)Lc/g;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v1

    const/16 v2, 0xa

    .line 3
    invoke-interface {v1, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 4
    iget-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v1

    .line 5
    invoke-interface {v1, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 6
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lc/g;->c(J)Lc/g;

    move-result-object v1

    .line 7
    invoke-interface {v1, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 8
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    .line 9
    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v5, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v5

    .line 10
    invoke-interface {v5, v4}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 11
    invoke-virtual {v5, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v4

    .line 12
    invoke-interface {v4, v2}, Lc/g;->writeByte(I)Lc/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    iget v5, p0, Lokhttp3/Cache$Entry;->code:I

    iget-object v6, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v1

    .line 14
    invoke-interface {v1, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 15
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lc/g;->c(J)Lc/g;

    move-result-object v1

    .line 16
    invoke-interface {v1, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 17
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 18
    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v3, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v3

    .line 19
    invoke-interface {v3, v4}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v3

    iget-object v5, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 20
    invoke-virtual {v5, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v3

    .line 21
    invoke-interface {v3, v2}, Lc/g;->writeByte(I)Lc/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_1
    sget-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v0

    .line 23
    invoke-interface {v0, v4}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v0

    iget-wide v5, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 24
    invoke-interface {v0, v5, v6}, Lc/g;->c(J)Lc/g;

    move-result-object v0

    .line 25
    invoke-interface {v0, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 26
    sget-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v0

    .line 27
    invoke-interface {v0, v4}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 28
    invoke-interface {v0, v3, v4}, Lc/g;->c(J)Lc/g;

    move-result-object v0

    .line 29
    invoke-interface {v0, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 30
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-interface {p1, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 32
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v0

    .line 33
    invoke-interface {v0, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 34
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lc/g;Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lc/g;Ljava/util/List;)V

    .line 36
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/g;->a(Ljava/lang/String;)Lc/g;

    move-result-object v0

    .line 38
    invoke-interface {v0, v2}, Lc/g;->writeByte(I)Lc/g;

    .line 39
    :cond_2
    invoke-interface {p1}, Lc/z;->close()V

    return-void
.end method
