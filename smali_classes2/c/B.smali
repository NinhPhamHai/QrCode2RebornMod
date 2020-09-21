.class final Lc/B;
.super Lc/C;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/C;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lc/C;
    .locals 0

    return-object p0
.end method

.method public throwIfReached()V
    .locals 0

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lc/C;
    .locals 0

    return-object p0
.end method
