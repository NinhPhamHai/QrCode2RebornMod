.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


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
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->access$2800(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->removeAllChangeListeners()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    iget-object v0, v0, Lio/realm/PermissionManager;->managementRealmConfig:Lio/realm/SyncConfiguration;

    invoke-static {v0}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    move-result-object v0

    .line 4
    sget-object v1, Lio/realm/ProgressMode;->CURRENT_CHANGES:Lio/realm/ProgressMode;

    new-instance v2, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    invoke-direct {v2, p0, v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;Lio/realm/SyncSession;)V

    invoke-virtual {v0, v1, v2}, Lio/realm/SyncSession;->addUploadProgressListener(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V

    return-void
.end method
