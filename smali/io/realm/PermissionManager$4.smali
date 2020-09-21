.class Lio/realm/PermissionManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;-><init>(Lio/realm/SyncUser;)V
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
    iput-object p1, p0, Lio/realm/PermissionManager$4;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/PermissionManager$4;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$4;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p2}, Lio/realm/PermissionManager;->access$402(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
