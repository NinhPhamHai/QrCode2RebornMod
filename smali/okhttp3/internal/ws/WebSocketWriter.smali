.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field activeWriter:Z

.field final buffer:Lc/f;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lc/g;

.field writerClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ZLc/g;Ljava/util/Random;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lc/f;

    .line 3
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 5
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    .line 6
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    .line 7
    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    .line 8
    new-array p2, p1, [B

    :cond_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeControlFrameSynchronized(ILc/i;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lc/i;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    or-int/lit16 p1, p1, 0x80

    .line 3
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {v1, p1}, Lc/g;->writeByte(I)Lc/g;

    .line 4
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {v0, p1}, Lc/g;->writeByte(I)Lc/g;

    .line 6
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 7
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {p1, v0}, Lc/g;->write([B)Lc/g;

    .line 8
    invoke-virtual {p2}, Lc/i;->g()[B

    move-result-object p1

    .line 9
    array-length p2, p1

    int-to-long v2, p2

    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 10
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p2, p1}, Lc/g;->write([B)Lc/g;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p1, v0}, Lc/g;->writeByte(I)Lc/g;

    .line 12
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p1, p2}, Lc/g;->a(Lc/i;)Lc/g;

    .line 13
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p1}, Lc/g;->flush()V

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method newMessageSink(IJ)Lc/z;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 3
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 4
    iput-wide p2, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 5
    iput-boolean v0, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return-object v1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeClose(ILc/i;)V
    .locals 1

    .line 1
    sget-object v0, Lc/i;->b:Lc/i;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 3
    :cond_1
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lc/f;->writeShort(I)Lc/f;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0, p2}, Lc/f;->a(Lc/i;)Lc/f;

    .line 6
    :cond_2
    invoke-virtual {v0}, Lc/f;->n()Lc/i;

    move-result-object v0

    .line 7
    :cond_3
    monitor-enter p0

    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 8
    :try_start_0
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILc/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 11
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw p1

    .line 12
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method writeMessageFrameSynchronized(IJZZ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 p1, p1, 0x80

    .line 2
    :cond_1
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p4, p1}, Lc/g;->writeByte(I)Lc/g;

    .line 3
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x80

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-wide/16 p4, 0x7d

    cmp-long v1, p2, p4

    if-gtz v1, :cond_3

    long-to-int p4, p2

    or-int/2addr p1, p4

    .line 4
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p4, p1}, Lc/g;->writeByte(I)Lc/g;

    goto :goto_2

    :cond_3
    const-wide/32 p4, 0xffff

    cmp-long v1, p2, p4

    if-gtz v1, :cond_4

    or-int/lit8 p1, p1, 0x7e

    .line 5
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p4, p1}, Lc/g;->writeByte(I)Lc/g;

    .line 6
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    long-to-int p4, p2

    invoke-interface {p1, p4}, Lc/g;->writeShort(I)Lc/g;

    goto :goto_2

    :cond_4
    or-int/lit8 p1, p1, 0x7f

    .line 7
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p4, p1}, Lc/g;->writeByte(I)Lc/g;

    .line 8
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p1, p2, p3}, Lc/g;->writeLong(J)Lc/g;

    .line 9
    :goto_2
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 11
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {p1, p4}, Lc/g;->write([B)Lc/g;

    const-wide/16 p4, 0x0

    :goto_3
    cmp-long p1, p4, p2

    if-gez p1, :cond_7

    .line 12
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    .line 13
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lc/f;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-virtual {v1, v2, v0, p1}, Lc/f;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    .line 14
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v7, p1

    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    move-wide v2, v7

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 15
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v1, v2, v0, p1}, Lc/g;->write([BII)Lc/g;

    add-long/2addr p4, v7

    goto :goto_3

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_6
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lc/f;

    invoke-interface {p1, p4, p2, p3}, Lc/z;->write(Lc/f;J)V

    .line 18
    :cond_7
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lc/g;

    invoke-interface {p1}, Lc/g;->b()Lc/g;

    return-void

    .line 19
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method writePing(Lc/i;)V
    .locals 1

    .line 1
    monitor-enter p0

    const/16 v0, 0x9

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILc/i;)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writePong(Lc/i;)V
    .locals 1

    .line 1
    monitor-enter p0

    const/16 v0, 0xa

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILc/i;)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
