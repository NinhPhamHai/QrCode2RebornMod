.class Lio/realm/SyncUser$4;
.super Lio/realm/SyncUser$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->changePasswordAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$4;->this$0:Lio/realm/SyncUser;

    iput-object p4, p0, Lio/realm/SyncUser$4;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lio/realm/SyncUser$4;->val$newPassword:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public run()Lio/realm/SyncUser;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$4;->this$0:Lio/realm/SyncUser;

    iget-object v1, p0, Lio/realm/SyncUser$4;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser$4;->val$newPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/SyncUser;->changePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/realm/SyncUser$4;->this$0:Lio/realm/SyncUser;

    return-object v0
.end method
