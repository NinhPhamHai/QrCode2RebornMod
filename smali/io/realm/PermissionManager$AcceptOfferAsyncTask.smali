.class Lio/realm/PermissionManager$AcceptOfferAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptOfferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/permissions/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$AcceptOfferCallback;

.field public grantedPermissionResults:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private managedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

.field private final responseId:Ljava/lang/String;

.field final synthetic this$0:Lio/realm/PermissionManager;

.field private transactionTask:Lio/realm/RealmAsyncTask;

.field private final unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$AcceptOfferCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 2
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    new-instance p1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-direct {p1, p3}, Lio/realm/internal/permissions/PermissionOfferResponse;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 4
    iget-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1}, Lio/realm/internal/permissions/PermissionOfferResponse;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->responseId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->callback:Lio/realm/PermissionManager$AcceptOfferCallback;

    return-void
.end method

.method static synthetic access$2000(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object p0
.end method

.method static synthetic access$2100(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->managedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object p0
.end method

.method static synthetic access$2102(Lio/realm/PermissionManager$AcceptOfferAsyncTask;Lio/realm/internal/permissions/PermissionOfferResponse;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->managedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object p1
.end method

.method static synthetic access$2200(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->responseId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->cancel()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    :cond_0
    return-void
.end method

.method notifyCallbackWithSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->callback:Lio/realm/PermissionManager$AcceptOfferCallback;

    invoke-interface {v0, p1, p2}, Lio/realm/PermissionManager$AcceptOfferCallback;->onSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p2}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1
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
    new-instance v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V

    .line 3
    new-instance v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V

    .line 4
    new-instance v2, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V

    .line 5
    iget-object v3, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    return-void
.end method
