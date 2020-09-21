.class final Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelaySubscription"
.end annotation


# instance fields
.field private final s:Ld/a/d;

.field final synthetic this$1:Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;Ld/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;->this$1:Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;->s:Ld/a/d;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;->s:Ld/a/d;

    invoke-interface {v0}, Ld/a/d;->cancel()V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
