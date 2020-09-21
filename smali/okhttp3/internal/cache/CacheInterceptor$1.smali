.class Lokhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lokhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lc/g;

.field final synthetic val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lc/h;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/CacheInterceptor;Lc/h;Lokhttp3/internal/cache/CacheRequest;Lc/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->this$0:Lokhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lc/h;

    iput-object p3, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lc/A;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    .line 5
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lc/h;

    invoke-interface {v0}, Lc/A;->close()V

    return-void
.end method

.method public read(Lc/f;J)J
    .locals 8

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lc/h;

    invoke-interface {v1, p1, p2, p3}, Lc/A;->read(Lc/f;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 4
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lc/g;

    invoke-interface {p1}, Lc/z;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lc/g;

    invoke-interface {v0}, Lc/g;->a()Lc/f;

    move-result-object v3

    invoke-virtual {p1}, Lc/f;->p()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lc/f;->a(Lc/f;JJ)Lc/f;

    .line 6
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lc/g;

    invoke-interface {p1}, Lc/g;->c()Lc/g;

    return-wide p2

    :catch_0
    move-exception p1

    .line 7
    iget-boolean p2, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    .line 8
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 9
    iget-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {p2}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    .line 10
    :cond_2
    throw p1
.end method

.method public timeout()Lc/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lc/h;

    invoke-interface {v0}, Lc/A;->timeout()Lc/C;

    move-result-object v0

    return-object v0
.end method
