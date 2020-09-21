.class Lio/realm/SyncUser$1;
.super Lio/realm/SyncUser$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->loginAsync(Lio/realm/SyncCredentials;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$authenticationUrl:Ljava/lang/String;

.field final synthetic val$credentials:Lio/realm/SyncCredentials;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Lio/realm/SyncCredentials;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lio/realm/SyncUser$1;->val$credentials:Lio/realm/SyncCredentials;

    iput-object p4, p0, Lio/realm/SyncUser$1;->val$authenticationUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public run()Lio/realm/SyncUser;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$1;->val$credentials:Lio/realm/SyncCredentials;

    iget-object v1, p0, Lio/realm/SyncUser$1;->val$authenticationUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/realm/SyncUser;->login(Lio/realm/SyncCredentials;Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method
