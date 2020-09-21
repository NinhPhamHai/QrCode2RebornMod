.class Lio/realm/SyncSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncSession;->getAccessToken(Lio/realm/internal/network/AuthenticationServer;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncSession;

.field final synthetic val$authServer:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    iput-object p2, p0, Lio/realm/SyncSession$1;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {p1}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    iget-object v0, p0, Lio/realm/SyncSession$1;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-static {p1, v0}, Lio/realm/SyncSession;->access$200(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lio/realm/internal/network/NetworkStateReceiver;->removeListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V

    :cond_1
    return-void
.end method
