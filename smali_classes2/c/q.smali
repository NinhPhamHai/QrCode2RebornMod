.class final Lc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/s;->a()Lc/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public timeout()Lc/C;
    .locals 1

    .line 1
    sget-object v0, Lc/C;->NONE:Lc/C;

    return-object v0
.end method

.method public write(Lc/f;J)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lc/f;->skip(J)V

    return-void
.end method
