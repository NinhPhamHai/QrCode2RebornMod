.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


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
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->access$2800(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->removeAllChangeListeners()V

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    return-void
.end method
