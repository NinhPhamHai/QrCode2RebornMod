.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QRLocationRealmProxyInterface;


# instance fields
.field public altitude:D

.field public latitude:D

.field public longitude:D

.field public query:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$raw_data(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$latitude(D)V

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$longitude(D)V

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$altitude(D)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmSet$query(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$altitude()D
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->altitude:D

    return-wide v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->latitude:D

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->longitude:D

    return-wide v0
.end method

.method public realmGet$query()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->query:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$altitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->altitude:D

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->latitude:D

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->longitude:D

    return-void
.end method

.method public realmSet$query(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->query:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->raw_data:Ljava/lang/String;

    return-void
.end method
