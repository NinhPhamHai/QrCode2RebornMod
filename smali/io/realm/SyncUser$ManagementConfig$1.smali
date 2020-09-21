.class Lio/realm/SyncUser$ManagementConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$ManagementConfig;->initAndGetManagementRealmConfig(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$ManagementConfig;

.field final synthetic val$user:Lio/realm/SyncUser;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$ManagementConfig;Lio/realm/SyncUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$ManagementConfig$1;->this$0:Lio/realm/SyncUser$ManagementConfig;

    iput-object p2, p0, Lio/realm/SyncUser$ManagementConfig$1;->val$user:Lio/realm/SyncUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object p1

    sget-object v0, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Client Reset required for user\'s management Realm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/realm/SyncUser$ManagementConfig$1;->val$user:Lio/realm/SyncUser;

    invoke-virtual {p2}, Lio/realm/SyncUser;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/realm/SyncUser$ManagementConfig$1;->val$user:Lio/realm/SyncUser;

    .line 4
    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p2}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "Unexpected error with %s\'s management Realm: %s"

    .line 6
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
