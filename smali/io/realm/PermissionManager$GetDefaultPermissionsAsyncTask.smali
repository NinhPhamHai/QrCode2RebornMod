.class Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDefaultPermissionsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$PermissionsCallback;

.field private loadingPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    iput-object p3, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->callback:Lio/realm/PermissionManager$PermissionsCallback;

    return-void
.end method

.method static synthetic access$1300(Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    return-object p0
.end method


# virtual methods
.method notifyCallbackWithSuccess(Lio/realm/RealmResults;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->callback:Lio/realm/PermissionManager$PermissionsCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$PermissionsCallback;->onSuccess(Lio/realm/RealmResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/Permission;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    .line 5
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;-><init>(Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    :goto_0
    return-void
.end method
