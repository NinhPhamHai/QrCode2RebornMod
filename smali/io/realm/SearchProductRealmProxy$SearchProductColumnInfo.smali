.class final Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SearchProductRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchProductColumnInfo"
.end annotation


# instance fields
.field avg_priceIndex:J

.field barcodeIndex:J

.field descriptionIndex:J

.field featureIndex:J

.field imageIndex:J

.field manufacturerIndex:J

.field modelIndex:J

.field nameIndex:J

.field product_idIndex:J

.field specIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 14
    invoke-virtual {p0, p1, p0}, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SearchProduct"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "product_id"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->product_idIndex:J

    const-string v0, "barcode"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->barcodeIndex:J

    const-string v0, "name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->nameIndex:J

    const-string v0, "model"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->modelIndex:J

    const-string v0, "manufacturer"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->manufacturerIndex:J

    const-string v0, "image"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->imageIndex:J

    const-string v0, "avg_price"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->avg_priceIndex:J

    const-string v0, "spec"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->specIndex:J

    const-string v0, "feature"

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->featureIndex:J

    const-string v0, "description"

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->descriptionIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;

    .line 3
    check-cast p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->product_idIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->product_idIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->barcodeIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->barcodeIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->nameIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->modelIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->modelIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->manufacturerIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->manufacturerIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->imageIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->imageIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->avg_priceIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->avg_priceIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->specIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->specIndex:J

    .line 12
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->featureIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->featureIndex:J

    .line 13
    iget-wide v0, p1, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->descriptionIndex:J

    iput-wide v0, p2, Lio/realm/SearchProductRealmProxy$SearchProductColumnInfo;->descriptionIndex:J

    return-void
.end method
