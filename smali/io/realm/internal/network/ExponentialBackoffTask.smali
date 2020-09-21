.class public abstract Lio/realm/internal/network/ExponentialBackoffTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/internal/network/AuthServerResponse;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateExponentialDelay(IJ)J
    .locals 6

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    mul-double v0, v0, v4

    long-to-double v2, p1

    cmpg-double p0, v2, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    double-to-long p1, v0

    :goto_0
    return-wide p1
.end method


# virtual methods
.method protected abstract execute()Lio/realm/internal/network/AuthServerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected isSuccess(Lio/realm/internal/network/AuthServerResponse;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract onError(Lio/realm/internal/network/AuthServerResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    .line 1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/realm/internal/network/ExponentialBackoffTask;->calculateExponentialDelay(IJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 2
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/realm/internal/network/ExponentialBackoffTask;->execute()Lio/realm/internal/network/AuthServerResponse;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lio/realm/internal/network/ExponentialBackoffTask;->isSuccess(Lio/realm/internal/network/AuthServerResponse;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Lio/realm/internal/network/ExponentialBackoffTask;->onSuccess(Lio/realm/internal/network/AuthServerResponse;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, v1}, Lio/realm/internal/network/ExponentialBackoffTask;->shouldAbortTask(Lio/realm/internal/network/AuthServerResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lio/realm/internal/network/ExponentialBackoffTask;->onError(Lio/realm/internal/network/AuthServerResponse;)V

    :goto_1
    return-void
.end method

.method protected shouldAbortTask(Lio/realm/internal/network/AuthServerResponse;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object p1

    sget-object v0, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
