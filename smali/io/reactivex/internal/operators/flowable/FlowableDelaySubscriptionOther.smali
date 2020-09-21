.class public final Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final main:Ld/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final other:Ld/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/a/b;Ld/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b<",
            "+TT;>;",
            "Ld/a/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->main:Ld/a/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->other:Ld/a/b;

    return-void
.end method


# virtual methods
.method public subscribeActual(Ld/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-direct {v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Ld/a/c;->onSubscribe(Ld/a/d;)V

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;

    invoke-direct {v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Ld/a/c;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->other:Ld/a/b;

    invoke-interface {p1, v1}, Ld/a/b;->subscribe(Ld/a/c;)V

    return-void
.end method
