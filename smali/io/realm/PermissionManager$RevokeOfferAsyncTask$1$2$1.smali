.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

.field final synthetic val$session:Lio/realm/SyncSession;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;Lio/realm/SyncSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iput-object p2, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->val$session:Lio/realm/SyncSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/Progress;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/realm/Progress;->isTransferComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->val$session:Lio/realm/SyncSession;

    invoke-virtual {p1, p0}, Lio/realm/SyncSession;->removeProgressListener(Lio/realm/ProgressListener;)V

    .line 3
    iget-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iget-object p1, p1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object p1, p1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    iget-object p1, p1, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {p1}, Lio/realm/PermissionManager;->access$2900(Lio/realm/PermissionManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
