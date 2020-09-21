.class Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$GetPermissionsAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$GetPermissionsAsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->access$1000(Lio/realm/PermissionManager$GetPermissionsAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 4
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$902(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;

    .line 7
    :cond_1
    iget-object p1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v0, p1, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method
