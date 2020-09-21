.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/CreatedQRCodeRealmProxyInterface;


# instance fields
.field public created:J

.field public id:Ljava/lang/String;
    .annotation build Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public raw_text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public updated:J


# direct methods
.method public constructor <init>()V
    .locals 2

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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$type(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$title(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$raw_text(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$created(J)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$updated(J)V

    return-void
.end method


# virtual methods
.method public realmGet$created()J
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->created:J

    return-wide v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->raw_text:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updated()J
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->updated:J

    return-wide v0
.end method

.method public realmSet$created(J)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->created:J

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->raw_text:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->updated:J

    return-void
.end method
