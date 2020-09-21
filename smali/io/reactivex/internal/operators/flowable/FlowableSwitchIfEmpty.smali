.class public final Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Ld/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Ld/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Ld/a/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->other:Ld/a/b;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Ld/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->other:Ld/a/b;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;-><init>(Ld/a/c;Ld/a/b;)V

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;->arbiter:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-interface {p1, v1}, Ld/a/c;->onSubscribe(Ld/a/d;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
