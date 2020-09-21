.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/SearchProductRealmProxyInterface;


# instance fields
.field public avg_price:Ljava/lang/String;

.field public barcode:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public feature:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public product_id:Ljava/lang/String;
    .annotation build Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public spec:Ljava/lang/String;


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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$product_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$barcode(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$model(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$manufacturer(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$image(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$avg_price(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$spec(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$feature(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$description(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$avg_price()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->avg_price:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$barcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->description:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$feature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$manufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$model()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->model:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$product_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$spec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$avg_price(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->avg_price:Ljava/lang/String;

    return-void
.end method

.method public realmSet$barcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->barcode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->description:Ljava/lang/String;

    return-void
.end method

.method public realmSet$feature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->feature:Ljava/lang/String;

    return-void
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$manufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public realmSet$model(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->model:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$product_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->product_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$spec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->spec:Ljava/lang/String;

    return-void
.end method
