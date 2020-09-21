.class Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http2/Http2Codec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Codec;Lc/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    .line 2
    invoke-direct {p0, p2}, Lc/k;-><init>(Lc/A;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    .line 2
    invoke-super {p0}, Lc/k;->close()V

    return-void
.end method
