.class Lio/realm/SyncUser$Request$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$Request;->postSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$Request;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/SyncUser$Request$4;->this$0:Lio/realm/SyncUser$Request;

    iput-object p2, p0, Lio/realm/SyncUser$Request$4;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$Request$4;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v0}, Lio/realm/SyncUser$Request;->access$200(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$RequestCallback;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncUser$Request$4;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/realm/SyncUser$RequestCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
