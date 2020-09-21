.class Lokhttp3/internal/connection/RealConnection$1;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/RealConnection;ZLc/h;Lc/g;Lokhttp3/internal/connection/StreamAllocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection$1;->this$0:Lokhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLc/h;Lc/g;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    return-void
.end method
