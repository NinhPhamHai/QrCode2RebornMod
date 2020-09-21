.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWorkerCallback"
.end annotation


# instance fields
.field final parents:[Ld/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ld/a/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final subscribers:[Ld/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ld/a/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/parallel/ParallelRunOn;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/parallel/ParallelRunOn;[Ld/a/c;[Ld/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ld/a/c<",
            "-TT;>;[",
            "Ld/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->this$0:Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->subscribers:[Ld/a/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->parents:[Ld/a/c;

    return-void
.end method


# virtual methods
.method public onWorker(ILio/reactivex/Scheduler$Worker;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->this$0:Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->subscribers:[Ld/a/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->parents:[Ld/a/c;

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->createSubscriber(I[Ld/a/c;[Ld/a/c;Lio/reactivex/Scheduler$Worker;)V

    return-void
.end method
