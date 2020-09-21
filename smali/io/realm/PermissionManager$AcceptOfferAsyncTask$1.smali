.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2000(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/Realm;->insertOrUpdate(Lio/realm/RealmModel;)V

    return-void
.end method
