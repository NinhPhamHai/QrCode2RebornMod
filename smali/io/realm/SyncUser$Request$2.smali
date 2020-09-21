.class Lio/realm/SyncUser$Request$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$Request;->postError(Lio/realm/ObjectServerError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$Request;

.field final synthetic val$error:Lio/realm/ObjectServerError;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$Request$2;->this$0:Lio/realm/SyncUser$Request;

    iput-object p2, p0, Lio/realm/SyncUser$Request$2;->val$error:Lio/realm/ObjectServerError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$Request$2;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v0}, Lio/realm/SyncUser$Request;->access$600(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncUser$Request$2;->val$error:Lio/realm/ObjectServerError;

    invoke-interface {v0, v1}, Lio/realm/SyncUser$Callback;->onError(Lio/realm/ObjectServerError;)V

    return-void
.end method
