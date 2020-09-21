.class Lio/realm/SyncUser$2;
.super Lio/realm/internal/network/ExponentialBackoffTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/network/ExponentialBackoffTask<",
        "Lio/realm/internal/network/LogoutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$refreshTokenToBeRevoked:Lio/realm/internal/objectserver/Token;

.field final synthetic val$server:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;Lio/realm/internal/network/AuthenticationServer;Lio/realm/internal/objectserver/Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$2;->this$0:Lio/realm/SyncUser;

    iput-object p2, p0, Lio/realm/SyncUser$2;->val$server:Lio/realm/internal/network/AuthenticationServer;

    iput-object p3, p0, Lio/realm/SyncUser$2;->val$refreshTokenToBeRevoked:Lio/realm/internal/objectserver/Token;

    invoke-direct {p0}, Lio/realm/internal/network/ExponentialBackoffTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Lio/realm/internal/network/AuthServerResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncUser$2;->execute()Lio/realm/internal/network/LogoutResponse;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Lio/realm/internal/network/LogoutResponse;
    .locals 3

    .line 2
    iget-object v0, p0, Lio/realm/SyncUser$2;->val$server:Lio/realm/internal/network/AuthenticationServer;

    iget-object v1, p0, Lio/realm/SyncUser$2;->val$refreshTokenToBeRevoked:Lio/realm/internal/objectserver/Token;

    iget-object v2, p0, Lio/realm/SyncUser$2;->this$0:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/realm/internal/network/AuthenticationServer;->logout(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)Lio/realm/internal/network/LogoutResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onError(Lio/realm/internal/network/AuthServerResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/network/LogoutResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncUser$2;->onError(Lio/realm/internal/network/LogoutResponse;)V

    return-void
.end method

.method protected onError(Lio/realm/internal/network/LogoutResponse;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to log user out.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/network/LogoutResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncUser$2;->onSuccess(Lio/realm/internal/network/LogoutResponse;)V

    return-void
.end method

.method protected onSuccess(Lio/realm/internal/network/LogoutResponse;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lio/realm/SyncUser$2;->this$0:Lio/realm/SyncUser;

    invoke-static {p1}, Lio/realm/SyncManager;->notifyUserLoggedOut(Lio/realm/SyncUser;)V

    return-void
.end method
