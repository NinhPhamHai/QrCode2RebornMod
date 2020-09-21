.class Lio/realm/PermissionManager$GetOffersAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$GetOffersAsyncTask;->run()V
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
        "Lio/realm/permissions/PermissionOffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$GetOffersAsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

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
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2600(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$2602(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;

    .line 6
    :cond_1
    iget-object p1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v0, p1, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2600(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/PermissionManager$GetOffersAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method
