.class public Lokhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field pushObserver:Lokhttp3/internal/http2/PushObserver;

.field sink:Lc/g;

.field socket:Ljava/net/Socket;

.field source:Lc/h;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 3
    sget-object v0, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pushObserver(Lokhttp3/internal/http2/PushObserver;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lc/s;->b(Ljava/net/Socket;)Lc/A;

    move-result-object v1

    invoke-static {v1}, Lc/s;->a(Lc/A;)Lc/h;

    move-result-object v1

    invoke-static {p1}, Lc/s;->a(Ljava/net/Socket;)Lc/z;

    move-result-object v2

    invoke-static {v2}, Lc/s;->a(Lc/z;)Lc/g;

    move-result-object v2

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lc/h;Lc/g;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lc/h;Lc/g;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 5
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lc/h;

    .line 7
    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lc/g;

    return-object p0
.end method
