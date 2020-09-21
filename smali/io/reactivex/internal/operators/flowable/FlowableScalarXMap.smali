.class public final Lio/reactivex/internal/operators/flowable/FlowableScalarXMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static scalarXMap(Ljava/lang/Object;Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ld/a/b<",
            "+TU;>;>;)",
            "Lio/reactivex/Flowable<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable;-><init>(Ljava/lang/Object;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static tryScalarXMapSubscribe(Ld/a/b;Ld/a/c;Lio/reactivex/functions/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/a/b<",
            "TT;>;",
            "Ld/a/c<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ld/a/b<",
            "+TR;>;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Ld/a/c;)V

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null Publisher"

    invoke-static {p0, p2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ld/a/b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    instance-of p2, p0, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_2

    .line 6
    :try_start_2
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_1

    .line 7
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Ld/a/c;)V

    return v0

    .line 8
    :cond_1
    new-instance p2, Lio/reactivex/internal/subscriptions/ScalarSubscription;

    invoke-direct {p2, p1, p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;-><init>(Ld/a/c;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ld/a/c;->onSubscribe(Ld/a/d;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ld/a/c;)V

    return v0

    .line 11
    :cond_2
    invoke-interface {p0, p1}, Ld/a/b;->subscribe(Ld/a/c;)V

    :goto_0
    return v0

    :catch_1
    move-exception p0

    .line 12
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ld/a/c;)V

    return v0

    :catch_2
    move-exception p0

    .line 14
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ld/a/c;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
