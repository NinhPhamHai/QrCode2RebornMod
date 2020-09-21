.class Lio/realm/SyncSession$2;
.super Lio/realm/internal/network/ExponentialBackoffTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncSession;->authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/network/ExponentialBackoffTask<",
        "Lio/realm/internal/network/AuthenticateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncSession;

.field final synthetic val$authServer:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    iput-object p2, p0, Lio/realm/SyncSession$2;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-direct {p0}, Lio/realm/internal/network/ExponentialBackoffTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Lio/realm/internal/network/AuthServerResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncSession$2;->execute()Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Lio/realm/internal/network/AuthenticateResponse;
    .locals 4

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/realm/SyncSession$2;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    iget-object v1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    .line 4
    invoke-virtual {v1}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/SyncUser;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    .line 5
    invoke-static {v2}, Lio/realm/SyncSession;->access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    .line 6
    invoke-virtual {v3}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    .line 7
    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/network/AuthenticationServer;->loginToRealm(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onError(Lio/realm/internal/network/AuthServerResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncSession$2;->onError(Lio/realm/internal/network/AuthenticateResponse;)V

    return-void
.end method

.method protected onError(Lio/realm/internal/network/AuthenticateResponse;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v2}, Lio/realm/SyncSession;->access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Session[%s]: Failed to get access token (%s)"

    .line 5
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$700(Lio/realm/SyncSession;)Lio/realm/SyncSession$ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/realm/SyncSession$ErrorHandler;->onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncSession$2;->onSuccess(Lio/realm/internal/network/AuthenticateResponse;)V

    return-void
.end method

.method protected onSuccess(Lio/realm/internal/network/AuthenticateResponse;)V
    .locals 5

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Session[%s]: Access token acquired"

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-virtual {v1}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v1

    iget-object v3, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v3}, Lio/realm/SyncSession;->access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v3

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/realm/SyncUser;->addRealm(Lio/realm/SyncConfiguration;Lio/realm/internal/objectserver/Token;)V

    .line 6
    iget-object v1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$400(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lio/realm/SyncSession;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    iget-object v1, p0, Lio/realm/SyncSession$2;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/SyncSession;->access$600(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {p1}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void
.end method
