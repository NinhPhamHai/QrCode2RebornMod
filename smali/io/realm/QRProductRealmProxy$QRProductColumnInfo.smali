.class final Lio/realm/QRProductRealmProxy$QRProductColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QRProductRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QRProductColumnInfo"
.end annotation


# instance fields
.field bestBeforeDateIndex:J

.field contentIndex:J

.field expirationDateIndex:J

.field isExpandedProductIndex:J

.field lotNumberIndex:J

.field normalized_product_idIndex:J

.field packagingDateIndex:J

.field priceCurrencyIndex:J

.field priceIncrementIndex:J

.field priceIndex:J

.field product_idIndex:J

.field productionDateIndex:J

.field raw_dataIndex:J

.field ssccIndex:J

.field weightIncrementIndex:J

.field weightIndex:J

.field weightTypeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 21
    invoke-virtual {p0, p1, p0}, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x11

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QRProduct"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    const-string v0, "product_id"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    const-string v0, "normalized_product_id"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    const-string v0, "content"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    const-string v0, "isExpandedProduct"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    const-string v0, "sscc"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    const-string v0, "lotNumber"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    const-string v0, "productionDate"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    const-string v0, "packagingDate"

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    const-string v0, "bestBeforeDate"

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    const-string v0, "expirationDate"

    .line 13
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    const-string v0, "weight"

    .line 14
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    const-string v0, "weightType"

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    const-string v0, "weightIncrement"

    .line 16
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    const-string v0, "price"

    .line 17
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    const-string v0, "priceIncrement"

    .line 18
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    const-string v0, "priceCurrency"

    .line 19
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->product_idIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->normalized_product_idIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->contentIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->isExpandedProductIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->ssccIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->lotNumberIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->productionDateIndex:J

    .line 12
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->packagingDateIndex:J

    .line 13
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->bestBeforeDateIndex:J

    .line 14
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->expirationDateIndex:J

    .line 15
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIndex:J

    .line 16
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightTypeIndex:J

    .line 17
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->weightIncrementIndex:J

    .line 18
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIndex:J

    .line 19
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceIncrementIndex:J

    .line 20
    iget-wide v0, p1, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    iput-wide v0, p2, Lio/realm/QRProductRealmProxy$QRProductColumnInfo;->priceCurrencyIndex:J

    return-void
.end method
