.class Lio/realm/SyncManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "NetworkListener: Connection available"

    invoke-static {v0, p1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/realm/SyncManager;->access$000()V

    goto :goto_0

    .line 3
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "NetworkListener: Connection lost"

    invoke-static {v0, p1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
