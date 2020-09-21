.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->run()V
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
.field final synthetic this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->grantedPermissionResults:Lio/realm/RealmResults;

    invoke-virtual {v0, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 4
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2100(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/permissions/PermissionOfferResponse;->getRealmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/RealmResults;->first()Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lio/realm/permissions/Permission;

    invoke-virtual {v0, v1, p1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->notifyCallbackWithSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method
