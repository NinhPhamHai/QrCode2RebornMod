.class public Lio/realm/internal/network/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;
    }
.end annotation


# static fields
.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lio/realm/SyncManager$Debug;->skipOnlineChecking:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    invoke-static {}, Lio/realm/internal/Util;->isEmulator()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static declared-synchronized removeListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    .locals 2

    const-class v0, Lio/realm/internal/network/NetworkStateReceiver;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/realm/internal/network/NetworkStateReceiver;->isOnline(Landroid/content/Context;)Z

    move-result p1

    .line 2
    sget-object p2, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    .line 3
    invoke-interface {v0, p1}, Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;->onChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
