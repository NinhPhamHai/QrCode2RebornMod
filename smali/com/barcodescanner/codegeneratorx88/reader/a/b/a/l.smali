.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QRWifiRealmProxyInterface;


# instance fields
.field public isHidden:Z

.field public networkEncryption:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$networkEncryption(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$ssid(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$password(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmSet$isHidden(Z)V

    return-void
.end method


# virtual methods
.method public realmGet$isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->isHidden:Z

    return v0
.end method

.method public realmGet$networkEncryption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->networkEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$password()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->password:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$isHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->isHidden:Z

    return-void
.end method

.method public realmSet$networkEncryption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->networkEncryption:Ljava/lang/String;

    return-void
.end method

.method public realmSet$password(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->password:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->raw_data:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ssid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->ssid:Ljava/lang/String;

    return-void
.end method
