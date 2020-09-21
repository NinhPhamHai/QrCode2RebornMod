.class Lio/realm/SyncSession$WaitForSessionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForSessionWrapper"
.end annotation


# instance fields
.field private errorCode:Ljava/lang/Long;

.field private errorMessage:Ljava/lang/String;

.field private volatile resultReceived:Z

.field private final waiter:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->waiter:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/SyncSession$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lio/realm/SyncSession$WaitForSessionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    .line 2
    iput-object p2, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    .line 4
    iget-object p1, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->waiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public throwExceptionIfNeeded()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorMessage:Ljava/lang/String;

    aput-object v5, v4, v0

    const-string v0, "Internal error (%d): %s"

    .line 3
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public waitForServerChanges()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->waiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    :cond_0
    return-void
.end method
