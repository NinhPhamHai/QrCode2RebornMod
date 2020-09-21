.class public final Lio/reactivex/internal/operators/flowable/FlowableFromPublisher;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final publisher:Ld/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromPublisher;->publisher:Ld/a/b;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Ld/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromPublisher;->publisher:Ld/a/b;

    invoke-interface {v0, p1}, Ld/a/b;->subscribe(Ld/a/c;)V

    return-void
.end method
