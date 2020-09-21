.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask;->run()V
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
.field final synthetic this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    iget-object p1, p1, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object p1

    new-instance v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V

    new-instance v1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V

    new-instance v2, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    :cond_1
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method
