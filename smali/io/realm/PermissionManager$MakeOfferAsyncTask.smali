.class Lio/realm/PermissionManager$MakeOfferAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeOfferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$MakeOfferCallback;

.field private managedOffer:Lio/realm/permissions/PermissionOffer;

.field private final offerId:Ljava/lang/String;

.field final synthetic this$0:Lio/realm/PermissionManager;

.field private transactionTask:Lio/realm/RealmAsyncTask;

.field private final unmanagedOffer:Lio/realm/permissions/PermissionOffer;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionOffer;Lio/realm/PermissionManager$MakeOfferCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 2
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    iput-object p3, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->unmanagedOffer:Lio/realm/permissions/PermissionOffer;

    .line 4
    invoke-virtual {p3}, Lio/realm/permissions/PermissionOffer;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->offerId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->callback:Lio/realm/PermissionManager$MakeOfferCallback;

    return-void
.end method

.method static synthetic access$1700(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->unmanagedOffer:Lio/realm/permissions/PermissionOffer;

    return-object p0
.end method

.method static synthetic access$1800(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->managedOffer:Lio/realm/permissions/PermissionOffer;

    return-object p0
.end method

.method static synthetic access$1802(Lio/realm/PermissionManager$MakeOfferAsyncTask;Lio/realm/permissions/PermissionOffer;)Lio/realm/permissions/PermissionOffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->managedOffer:Lio/realm/permissions/PermissionOffer;

    return-object p1
.end method

.method static synthetic access$1900(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->offerId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->cancel()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    :cond_0
    return-void
.end method

.method notifyCallbackWithSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->callback:Lio/realm/PermissionManager$MakeOfferCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$MakeOfferCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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
    new-instance v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V

    .line 3
    new-instance v1, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V

    .line 4
    new-instance v2, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V

    .line 5
    iget-object v3, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    return-void
.end method
