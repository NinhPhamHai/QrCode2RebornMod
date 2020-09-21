.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QREmailRealmProxyInterface;


# instance fields
.field public bccs:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public ccs:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public tos:Ljava/lang/String;


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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$tos(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$ccs(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$bccs(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$subject(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->realmSet$body(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$bccs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->bccs:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$body()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->body:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ccs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->ccs:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$subject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tos()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->tos:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$bccs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->bccs:Ljava/lang/String;

    return-void
.end method

.method public realmSet$body(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->body:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ccs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->ccs:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->raw_data:Ljava/lang/String;

    return-void
.end method

.method public realmSet$subject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->subject:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/c;->tos:Ljava/lang/String;

    return-void
.end method
