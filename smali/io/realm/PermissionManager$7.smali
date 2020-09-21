.class Lio/realm/PermissionManager$7;
.super Lio/realm/Realm$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;->openRealms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Lio/realm/Realm$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v2, v3, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$402(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 3
    iget-object p1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$600(Lio/realm/PermissionManager;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onSuccess(Lio/realm/BaseRealm;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$7;->onSuccess(Lio/realm/Realm;)V

    return-void
.end method

.method public onSuccess(Lio/realm/Realm;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$802(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;

    .line 3
    iget-object p1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$600(Lio/realm/PermissionManager;)V

    return-void
.end method
