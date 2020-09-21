.class final Lokhttp3/RequestBody$1;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lc/i;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lc/i;

.field final synthetic val$contentType:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Lc/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/RequestBody$1;->val$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$1;->val$content:Lc/i;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$1;->val$content:Lc/i;

    invoke-virtual {v0}, Lc/i;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$1;->val$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lc/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$1;->val$content:Lc/i;

    invoke-interface {p1, v0}, Lc/g;->a(Lc/i;)Lc/g;

    return-void
.end method
