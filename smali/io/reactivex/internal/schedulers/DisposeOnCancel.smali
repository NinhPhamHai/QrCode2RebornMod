.class final Lio/reactivex/internal/schedulers/DisposeOnCancel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/DisposeOnCancel;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/schedulers/DisposeOnCancel;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
