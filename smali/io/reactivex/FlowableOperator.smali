.class public interface abstract Lio/reactivex/FlowableOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Downstream:",
        "Ljava/lang/Object;",
        "Upstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ld/a/c;)Ld/a/c;
    .param p1    # Ld/a/c;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c<",
            "-TDownstream;>;)",
            "Ld/a/c<",
            "-TUpstream;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end method
