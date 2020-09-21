.class Lio/realm/SyncManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v0

    sget-object v1, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client Reset required for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object p1

    aput-object p1, v3, v2

    .line 5
    invoke-virtual {p2}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Session Error[%s]: %s"

    .line 6
    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v0, Lio/realm/SyncManager$3;->$SwitchMap$io$realm$ErrorCode$Category:[I

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ErrorCode;->getCategory()Lio/realm/ErrorCode$Category;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v4, :cond_2

    if-ne v0, v1, :cond_1

    .line 8
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/realm/log/RealmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported error category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/ErrorCode;->getCategory()Lio/realm/ErrorCode$Category;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
