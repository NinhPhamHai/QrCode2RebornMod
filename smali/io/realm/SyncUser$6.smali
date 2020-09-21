.class Lio/realm/SyncUser$6;
.super Lio/realm/SyncUser$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->retrieveInfoForUserAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$RequestCallback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Lio/realm/SyncUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$provider:Ljava/lang/String;

.field final synthetic val$providerUserIdentity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$RequestCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$6;->this$0:Lio/realm/SyncUser;

    iput-object p4, p0, Lio/realm/SyncUser$6;->val$providerUserIdentity:Ljava/lang/String;

    iput-object p5, p0, Lio/realm/SyncUser$6;->val$provider:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$RequestCallback;)V

    return-void
.end method


# virtual methods
.method public execute()Lio/realm/SyncUserInfo;
    .locals 3

    .line 2
    iget-object v0, p0, Lio/realm/SyncUser$6;->this$0:Lio/realm/SyncUser;

    iget-object v1, p0, Lio/realm/SyncUser$6;->val$providerUserIdentity:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser$6;->val$provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/SyncUser;->retrieveInfoForUser(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/SyncUser$6;->execute()Lio/realm/SyncUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public run()Lio/realm/SyncUser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
