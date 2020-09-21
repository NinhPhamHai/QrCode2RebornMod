.class final Lc/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g;


# instance fields
.field public final a:Lc/f;

.field public final b:Lc/z;

.field c:Z


# direct methods
.method constructor <init>(Lc/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iput-object v0, p0, Lc/t;->a:Lc/f;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lc/t;->b:Lc/z;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lc/A;)J
    .locals 7

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lc/t;->a:Lc/f;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lc/A;->read(Lc/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    .line 11
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    goto :goto_0

    :cond_0
    return-wide v0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a()Lc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/t;->a:Lc/f;

    return-object v0
.end method

.method public a(Lc/i;)Lc/g;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->a(Lc/i;)Lc/f;

    .line 4
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lc/g;
    .locals 1

    .line 6
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    .line 8
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lc/g;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0}, Lc/f;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v2, p0, Lc/t;->b:Lc/z;

    iget-object v3, p0, Lc/t;->a:Lc/f;

    invoke-interface {v2, v3, v0, v1}, Lc/z;->write(Lc/f;J)V

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lc/g;
    .locals 5

    .line 5
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0}, Lc/f;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 7
    iget-object v2, p0, Lc/t;->b:Lc/z;

    iget-object v3, p0, Lc/t;->a:Lc/f;

    invoke-interface {v2, v3, v0, v1}, Lc/z;->write(Lc/f;J)V

    :cond_0
    return-object p0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(J)Lc/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2}, Lc/f;->c(J)Lc/f;

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/t;->a:Lc/f;

    iget-wide v1, v1, Lc/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 3
    iget-object v1, p0, Lc/t;->b:Lc/z;

    iget-object v2, p0, Lc/t;->a:Lc/f;

    iget-object v3, p0, Lc/t;->a:Lc/f;

    iget-wide v3, v3, Lc/f;->c:J

    invoke-interface {v1, v2, v3, v4}, Lc/z;->write(Lc/f;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lc/t;->b:Lc/z;

    invoke-interface {v2}, Lc/z;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lc/t;->c:Z

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {v1}, Lc/D;->a(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(J)Lc/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2}, Lc/f;->e(J)Lc/f;

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    iget-wide v1, v0, Lc/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    iget-object v3, p0, Lc/t;->b:Lc/z;

    invoke-interface {v3, v0, v1, v2}, Lc/z;->write(Lc/f;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/t;->b:Lc/z;

    invoke-interface {v0}, Lc/z;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/t;->b:Lc/z;

    invoke-interface {v0}, Lc/z;->timeout()Lc/C;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/t;->b:Lc/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([B)Lc/g;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->write([B)Lc/f;

    .line 7
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lc/g;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/f;->write([BII)Lc/f;

    .line 11
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lc/f;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/f;->write(Lc/f;J)V

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lc/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->writeByte(I)Lc/f;

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lc/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->writeInt(I)Lc/f;

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)Lc/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2}, Lc/f;->writeLong(J)Lc/f;

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lc/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->writeShort(I)Lc/f;

    .line 3
    invoke-virtual {p0}, Lc/t;->c()Lc/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
