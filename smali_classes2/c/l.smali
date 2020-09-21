.class public Lc/l;
.super Lc/C;
.source "SourceFile"


# instance fields
.field private a:Lc/C;


# direct methods
.method public constructor <init>(Lc/C;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/C;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lc/l;->a:Lc/C;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    return-object v0
.end method

.method public final a(Lc/C;)Lc/l;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lc/l;->a:Lc/C;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearDeadline()Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0}, Lc/C;->clearDeadline()Lc/C;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0}, Lc/C;->clearTimeout()Lc/C;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0}, Lc/C;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lc/C;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0, p1, p2}, Lc/C;->deadlineNanoTime(J)Lc/C;

    move-result-object p1

    return-object p1
.end method

.method public hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0}, Lc/C;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public throwIfReached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0}, Lc/C;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0, p1, p2, p3}, Lc/C;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/C;

    move-result-object p1

    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/l;->a:Lc/C;

    invoke-virtual {v0}, Lc/C;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
