.class Lio/realm/PermissionManager$MakeOfferAsyncTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    iget-object v1, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-static {v2}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$1900(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirstAsync()Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {v0, v1}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$1802(Lio/realm/PermissionManager$MakeOfferAsyncTask;Lio/realm/permissions/PermissionOffer;)Lio/realm/permissions/PermissionOffer;

    .line 3
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$1800(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    new-instance v1, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask$2;)V

    invoke-static {v0, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    return-void
.end method
