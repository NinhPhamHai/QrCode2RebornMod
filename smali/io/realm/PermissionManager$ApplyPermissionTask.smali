.class Lio/realm/PermissionManager$ApplyPermissionTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyPermissionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$ApplyPermissionsCallback;

.field private final changeRequestId:Ljava/lang/String;

.field private managedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

.field final synthetic this$0:Lio/realm/PermissionManager;

.field private transactionTask:Lio/realm/RealmAsyncTask;

.field private final unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionRequest;Lio/realm/PermissionManager$ApplyPermissionsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    .line 2
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    invoke-static {p3}, Lio/realm/internal/permissions/PermissionChange;->fromRequest(Lio/realm/permissions/PermissionRequest;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    .line 4
    iget-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1}, Lio/realm/internal/permissions/PermissionChange;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->changeRequestId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->callback:Lio/realm/PermissionManager$ApplyPermissionsCallback;

    return-void
.end method

.method static synthetic access$1400(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    return-object p0
.end method

.method static synthetic access$1500(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->managedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    return-object p0
.end method

.method static synthetic access$1502(Lio/realm/PermissionManager$ApplyPermissionTask;Lio/realm/internal/permissions/PermissionChange;)Lio/realm/internal/permissions/PermissionChange;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->managedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    return-object p1
.end method

.method static synthetic access$1600(Lio/realm/PermissionManager$ApplyPermissionTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->changeRequestId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->cancel()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->transactionTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/realm/PermissionManager$ApplyPermissionTask;->cancel()V

    :cond_0
    return-void
.end method

.method notifyCallbackWithSuccess()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->callback:Lio/realm/PermissionManager$ApplyPermissionsCallback;

    invoke-interface {v0}, Lio/realm/PermissionManager$ApplyPermissionsCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/realm/PermissionManager$ApplyPermissionTask$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$1;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V

    .line 3
    new-instance v1, Lio/realm/PermissionManager$ApplyPermissionTask$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$2;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V

    .line 4
    new-instance v2, Lio/realm/PermissionManager$ApplyPermissionTask$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$3;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V

    .line 5
    iget-object v3, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->transactionTask:Lio/realm/RealmAsyncTask;

    return-void
.end method
