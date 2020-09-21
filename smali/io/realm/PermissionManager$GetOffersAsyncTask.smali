.class Lio/realm/PermissionManager$GetOffersAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOffersAsyncTask"
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
.field private final callback:Lio/realm/PermissionManager$OffersCallback;

.field private loadingOffers:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$OffersCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    iput-object p3, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->callback:Lio/realm/PermissionManager$OffersCallback;

    return-void
.end method


# virtual methods
.method notifyCallbackWithSuccess(Lio/realm/RealmResults;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->callback:Lio/realm/PermissionManager$OffersCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$OffersCallback;->onSuccess(Lio/realm/RealmResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2600(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2600(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$GetOffersAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->loadingOffers:Lio/realm/RealmResults;

    .line 7
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->loadingOffers:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$GetOffersAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$GetOffersAsyncTask$1;-><init>(Lio/realm/PermissionManager$GetOffersAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    :goto_0
    return-void
.end method
