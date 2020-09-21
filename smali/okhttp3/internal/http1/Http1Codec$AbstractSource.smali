.class abstract Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lc/l;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lc/l;

    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lc/h;

    invoke-interface {v0}, Lc/A;->timeout()Lc/C;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/l;-><init>(Lc/C;)V

    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lc/l;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v1, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lc/l;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lc/l;)V

    .line 3
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iput v2, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 4
    iget-object v1, v0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v1, v1, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lc/l;

    return-object v0
.end method
