.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->onChange(Lio/realm/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;->this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;->this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;->this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->notifyCallbackWithSuccess()V

    return-void
.end method
