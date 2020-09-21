.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QREventRealmProxyInterface;


# instance fields
.field public description:Ljava/lang/String;

.field public end:J

.field public endAllDay:Z

.field public latitude:D

.field public location:Ljava/lang/String;

.field public longitude:D

.field public organizer:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;

.field public start:J

.field public startAllDay:Z

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$title(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$start(J)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$startAllDay(Z)V

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$end(J)V

    .line 7
    invoke-virtual {p0, v3}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$endAllDay(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$location(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$organizer(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$description(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$url(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$latitude(D)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmSet$longitude(D)V

    return-void
.end method


# virtual methods
.method public realmGet$description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->description:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$end()J
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->end:J

    return-wide v0
.end method

.method public realmGet$endAllDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->endAllDay:Z

    return v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->latitude:D

    return-wide v0
.end method

.method public realmGet$location()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->location:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->longitude:D

    return-wide v0
.end method

.method public realmGet$organizer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$start()J
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->start:J

    return-wide v0
.end method

.method public realmGet$startAllDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->startAllDay:Z

    return v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->description:Ljava/lang/String;

    return-void
.end method

.method public realmSet$end(J)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->end:J

    return-void
.end method

.method public realmSet$endAllDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->endAllDay:Z

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->latitude:D

    return-void
.end method

.method public realmSet$location(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->location:Ljava/lang/String;

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->longitude:D

    return-void
.end method

.method public realmSet$organizer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->organizer:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->raw_data:Ljava/lang/String;

    return-void
.end method

.method public realmSet$start(J)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->start:J

    return-void
.end method

.method public realmSet$startAllDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->startAllDay:Z

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->url:Ljava/lang/String;

    return-void
.end method
