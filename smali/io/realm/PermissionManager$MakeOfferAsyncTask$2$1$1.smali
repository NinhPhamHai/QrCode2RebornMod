.class Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->onChange(Lio/realm/permissions/PermissionOffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

.field final synthetic val$permissionOffer:Lio/realm/permissions/PermissionOffer;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;Lio/realm/permissions/PermissionOffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    iput-object p2, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->val$permissionOffer:Lio/realm/permissions/PermissionOffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->val$permissionOffer:Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v1}, Lio/realm/permissions/PermissionOffer;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->notifyCallbackWithSuccess(Ljava/lang/String;)V

    return-void
.end method
