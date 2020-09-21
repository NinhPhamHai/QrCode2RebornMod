.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QRTextRealmProxyInterface;


# instance fields
.field public language:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;

.field public text:Ljava/lang/String;


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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmSet$text(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->realmSet$language(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$language()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->language:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->text:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$language(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->language:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->raw_data:Ljava/lang/String;

    return-void
.end method

.method public realmSet$text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/j;->text:Ljava/lang/String;

    return-void
.end method
