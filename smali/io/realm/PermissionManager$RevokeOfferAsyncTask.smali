.class Lio/realm/PermissionManager$RevokeOfferAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokeOfferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/permissions/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$RevokeOfferCallback;

.field private matchingOffers:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field

.field private final offerToken:Ljava/lang/String;

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$RevokeOfferCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 2
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 3
    iput-object p3, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->offerToken:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->callback:Lio/realm/PermissionManager$RevokeOfferCallback;

    return-void
.end method

.method static synthetic access$2700(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->offerToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->matchingOffers:Lio/realm/RealmResults;

    return-object p0
.end method


# virtual methods
.method notifyCallbackWithSuccess()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->callback:Lio/realm/PermissionManager$RevokeOfferCallback;

    invoke-interface {v0}, Lio/realm/PermissionManager$RevokeOfferCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1100(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
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
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    iget-object v1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->offerToken:Ljava/lang/String;

    const-string v2, "token"

    .line 3
    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->matchingOffers:Lio/realm/RealmResults;

    .line 5
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->matchingOffers:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    return-void
.end method
