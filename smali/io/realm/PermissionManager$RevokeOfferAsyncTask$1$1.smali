.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->onChange(Lio/realm/RealmResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    .line 3
    invoke-static {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->access$2700(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    :cond_1
    return-void
.end method
