.class public final Lio/reactivex/internal/observers/SubscriberCompletableObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Ld/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/CompletableObserver;",
        "Ld/a/d;"
    }
.end annotation


# instance fields
.field d:Lio/reactivex/disposables/Disposable;

.field final subscriber:Ld/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/c<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Ld/a/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Ld/a/c;

    invoke-interface {v0}, Ld/a/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Ld/a/c;

    invoke-interface {v0, p1}, Ld/a/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Ld/a/c;

    invoke-interface {p1, p0}, Ld/a/c;->onSubscribe(Ld/a/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
