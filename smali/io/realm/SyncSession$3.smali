.class Lio/realm/SyncSession$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncSession;->scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V
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
    iput-object p1, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    iput-object p2, p0, Lio/realm/SyncSession$3;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$800(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    iget-object v1, p0, Lio/realm/SyncSession$3;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-static {v0, v1}, Lio/realm/SyncSession;->access$900(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    :cond_0
    return-void
.end method
