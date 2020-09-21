.class public Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/QRProductRealmProxyInterface;


# instance fields
.field public bestBeforeDate:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public expirationDate:Ljava/lang/String;

.field public isExpandedProduct:Z

.field public lotNumber:Ljava/lang/String;

.field public normalized_product_id:Ljava/lang/String;

.field public packagingDate:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public priceCurrency:Ljava/lang/String;

.field public priceIncrement:Ljava/lang/String;

.field public product_id:Ljava/lang/String;

.field public productionDate:Ljava/lang/String;

.field public raw_data:Ljava/lang/String;

.field public sscc:Ljava/lang/String;

.field public weight:Ljava/lang/String;

.field public weightIncrement:Ljava/lang/String;

.field public weightType:Ljava/lang/String;


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
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$raw_data(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$product_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$normalized_product_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$content(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$isExpandedProduct(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$sscc(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$lotNumber(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$productionDate(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$packagingDate(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$bestBeforeDate(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$expirationDate(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$weight(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$weightType(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$weightIncrement(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$price(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$priceIncrement(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->realmSet$priceCurrency(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$bestBeforeDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->bestBeforeDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->content:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$expirationDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->expirationDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isExpandedProduct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->isExpandedProduct:Z

    return v0
.end method

.method public realmGet$lotNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->lotNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$normalized_product_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->normalized_product_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packagingDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->packagingDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$price()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->price:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$priceCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->priceCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$priceIncrement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->priceIncrement:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$product_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$productionDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->productionDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$raw_data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->raw_data:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$sscc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->sscc:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$weight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$weightIncrement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->weightIncrement:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$weightType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->weightType:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$bestBeforeDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->bestBeforeDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->content:Ljava/lang/String;

    return-void
.end method

.method public realmSet$expirationDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->expirationDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isExpandedProduct(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->isExpandedProduct:Z

    return-void
.end method

.method public realmSet$lotNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->lotNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$normalized_product_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->normalized_product_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packagingDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->packagingDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$price(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->price:Ljava/lang/String;

    return-void
.end method

.method public realmSet$priceCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->priceCurrency:Ljava/lang/String;

    return-void
.end method

.method public realmSet$priceIncrement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->priceIncrement:Ljava/lang/String;

    return-void
.end method

.method public realmSet$product_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->product_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$productionDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->productionDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$raw_data(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->raw_data:Ljava/lang/String;

    return-void
.end method

.method public realmSet$sscc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->sscc:Ljava/lang/String;

    return-void
.end method

.method public realmSet$weight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->weight:Ljava/lang/String;

    return-void
.end method

.method public realmSet$weightIncrement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->weightIncrement:Ljava/lang/String;

    return-void
.end method

.method public realmSet$weightType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/h;->weightType:Ljava/lang/String;

    return-void
.end method
