.class final Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ld/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScanSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Ld/a/d;"
    }
.end annotation


# instance fields
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field final actual:Ld/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field s:Ld/a/d;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld/a/c;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->actual:Ld/a/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->accumulator:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->s:Ld/a/d;

    invoke-interface {v0}, Ld/a/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->actual:Ld/a/c;

    invoke-interface {v0}, Ld/a/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->done:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->actual:Ld/a/c;

    invoke-interface {v0, p1}, Ld/a/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->actual:Ld/a/c;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->value:Ljava/lang/Object;

    .line 5
    invoke-interface {v0, p1}, Ld/a/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->accumulator:Lio/reactivex/functions/BiFunction;

    invoke-interface {v2, v1, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The value returned by the accumulator is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->value:Ljava/lang/Object;

    .line 8
    invoke-interface {v0, p1}, Ld/a/c;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->s:Ld/a/d;

    invoke-interface {v0}, Ld/a/d;->cancel()V

    .line 11
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Ld/a/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->s:Ld/a/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ld/a/d;Ld/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->s:Ld/a/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->actual:Ld/a/c;

    invoke-interface {p1, p0}, Ld/a/c;->onSubscribe(Ld/a/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;->s:Ld/a/d;

    invoke-interface {v0, p1, p2}, Ld/a/d;->request(J)V

    return-void
.end method
