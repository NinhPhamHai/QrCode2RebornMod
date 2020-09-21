.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QRCodeEntityRealmProxyInterface;


# instance fields
.field public created:J

.field public favorite:Z

.field public id:Ljava/lang/String;
    .annotation build Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public qrContact:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

.field public qrEmail:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

.field public qrEvent:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

.field public qrLocation:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

.field public qrMessage:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

.field public qrProduct:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

.field public qrTelephone:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

.field public qrText:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

.field public qrUrl:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

.field public qrWifi:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$type(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$title(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$created(J)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$favorite(Z)V

    return-void
.end method


# virtual methods
.method public realmGet$created()J
    .locals 2

    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->created:J

    return-wide v0
.end method

.method public realmGet$favorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->favorite:Z

    return v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$qrContact()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrContact:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    return-object v0
.end method

.method public realmGet$qrEmail()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrEmail:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    return-object v0
.end method

.method public realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrEvent:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    return-object v0
.end method

.method public realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrLocation:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    return-object v0
.end method

.method public realmGet$qrMessage()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrMessage:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    return-object v0
.end method

.method public realmGet$qrProduct()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrProduct:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-object v0
.end method

.method public realmGet$qrTelephone()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrTelephone:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    return-object v0
.end method

.method public realmGet$qrText()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrText:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    return-object v0
.end method

.method public realmGet$qrUrl()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrUrl:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    return-object v0
.end method

.method public realmGet$qrWifi()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrWifi:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$created(J)V
    .locals 0

    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->created:J

    return-void
.end method

.method public realmSet$favorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->favorite:Z

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$qrContact(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrContact:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;

    return-void
.end method

.method public realmSet$qrEmail(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrEmail:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;

    return-void
.end method

.method public realmSet$qrEvent(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrEvent:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    return-void
.end method

.method public realmSet$qrLocation(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrLocation:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    return-void
.end method

.method public realmSet$qrMessage(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrMessage:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/g;

    return-void
.end method

.method public realmSet$qrProduct(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrProduct:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;

    return-void
.end method

.method public realmSet$qrTelephone(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrTelephone:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/i;

    return-void
.end method

.method public realmSet$qrText(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrText:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;

    return-void
.end method

.method public realmSet$qrUrl(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrUrl:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/k;

    return-void
.end method

.method public realmSet$qrWifi(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->qrWifi:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->type:Ljava/lang/String;

    return-void
.end method
