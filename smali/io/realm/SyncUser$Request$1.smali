.class Lio/realm/SyncUser$Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$Request;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v0}, Lio/realm/SyncUser$Request;->access$200(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$RequestCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-virtual {v1}, Lio/realm/SyncUser$Request;->execute()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/SyncUser$Request;->access$300(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-virtual {v1}, Lio/realm/SyncUser$Request;->run()Lio/realm/SyncUser;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/SyncUser$Request;->access$400(Lio/realm/SyncUser$Request;Lio/realm/SyncUser;)V
    :try_end_0
    .catch Lio/realm/ObjectServerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    const-string v4, "Unexpected error"

    invoke-direct {v2, v3, v4, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lio/realm/SyncUser$Request;->access$500(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v1, v0}, Lio/realm/SyncUser$Request;->access$500(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V

    :goto_0
    return-void
.end method
