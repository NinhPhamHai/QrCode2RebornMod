.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QRContactRealmProxyInterface;


# instance fields
.field public address:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public first_name:Ljava/lang/String;

.field public job:Ljava/lang/String;

.field public last_name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;


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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$first_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$last_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$address(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$phone(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$email(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$job(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmSet$birthday(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->address:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$birthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$email()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->email:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$first_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->first_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$job()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->job:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$last_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->last_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$phone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->address:Ljava/lang/String;

    return-void
.end method

.method public realmSet$birthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->birthday:Ljava/lang/String;

    return-void
.end method

.method public realmSet$email(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->email:Ljava/lang/String;

    return-void
.end method

.method public realmSet$first_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->first_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$job(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->job:Ljava/lang/String;

    return-void
.end method

.method public realmSet$last_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->last_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$phone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->phone:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->raw_data:Ljava/lang/String;

    return-void
.end method
