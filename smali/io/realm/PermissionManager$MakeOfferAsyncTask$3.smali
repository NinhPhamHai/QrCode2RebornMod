.class Lio/realm/PermissionManager$MakeOfferAsyncTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


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
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    return-void
.end method
