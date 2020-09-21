.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->onChange(Lio/realm/internal/permissions/PermissionOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

.field final synthetic val$response:Lio/realm/internal/permissions/PermissionOfferResponse;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;Lio/realm/internal/permissions/PermissionOfferResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iput-object p2, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->val$response:Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v1, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lio/realm/permissions/Permission;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    iget-object v2, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->val$response:Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v2}, Lio/realm/internal/permissions/PermissionOfferResponse;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v1

    iput-object v1, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->grantedPermissionResults:Lio/realm/RealmResults;

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->grantedPermissionResults:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    return-void
.end method
