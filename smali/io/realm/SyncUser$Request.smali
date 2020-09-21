.class abstract Lio/realm/SyncUser$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/SyncUser$Callback;

.field private final genericCallback:Lio/realm/SyncUser$RequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/SyncUser$RequestCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final handler:Lio/realm/internal/RealmNotifier;

.field private final networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lio/realm/SyncUser$Request;->genericCallback:Lio/realm/SyncUser$RequestCallback;

    .line 4
    new-instance v0, Lio/realm/internal/android/AndroidRealmNotifier;

    new-instance v1, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v1}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    invoke-direct {v0, p2, v1}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Capabilities;)V

    iput-object v0, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    .line 5
    iput-object p1, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$RequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lio/realm/SyncUser$RequestCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    .line 8
    iput-object p2, p0, Lio/realm/SyncUser$Request;->genericCallback:Lio/realm/SyncUser$RequestCallback;

    .line 9
    new-instance p2, Lio/realm/internal/android/AndroidRealmNotifier;

    new-instance v1, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v1}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    invoke-direct {p2, v0, v1}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Capabilities;)V

    iput-object p2, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    .line 10
    iput-object p1, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$200(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$RequestCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncUser$Request;->genericCallback:Lio/realm/SyncUser$RequestCallback;

    return-object p0
.end method

.method static synthetic access$300(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SyncUser$Request;->postSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lio/realm/SyncUser$Request;Lio/realm/SyncUser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SyncUser$Request;->postSuccess(Lio/realm/SyncUser;)V

    return-void
.end method

.method static synthetic access$500(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SyncUser$Request;->postError(Lio/realm/ObjectServerError;)V

    return-void
.end method

.method static synthetic access$600(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    return-object p0
.end method

.method private postError(Lio/realm/ObjectServerError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/realm/SyncUser$Request$2;

    invoke-direct {v0, p0, p1}, Lio/realm/SyncUser$Request$2;-><init>(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V

    .line 3
    iget-object v2, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v2, v0}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "An error was thrown, but could not be handled."

    invoke-static {p1, v1, v0}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private postSuccess(Lio/realm/SyncUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/SyncUser$Request$3;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncUser$Request$3;-><init>(Lio/realm/SyncUser$Request;Lio/realm/SyncUser;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private postSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/realm/SyncUser$Request;->genericCallback:Lio/realm/SyncUser$RequestCallback;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/SyncUser$Request$4;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncUser$Request$4;-><init>(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract run()Lio/realm/SyncUser;
.end method

.method public start()Lio/realm/RealmAsyncTask;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncUser$Request$1;

    invoke-direct {v1, p0}, Lio/realm/SyncUser$Request$1;-><init>(Lio/realm/SyncUser$Request;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2
    new-instance v1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    iget-object v2, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object v1
.end method
