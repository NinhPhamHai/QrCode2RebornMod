.class final Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QRCodeEntityRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QRCodeEntityColumnInfo"
.end annotation


# instance fields
.field createdIndex:J

.field favoriteIndex:J

.field idIndex:J

.field qrContactIndex:J

.field qrEmailIndex:J

.field qrEventIndex:J

.field qrLocationIndex:J

.field qrMessageIndex:J

.field qrProductIndex:J

.field qrTelephoneIndex:J

.field qrTextIndex:J

.field qrUrlIndex:J

.field qrWifiIndex:J

.field titleIndex:J

.field typeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 19
    invoke-virtual {p0, p1, p0}, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xf

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QRCodeEntity"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->idIndex:J

    const-string v0, "type"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    const-string v0, "title"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    const-string v0, "created"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    const-string v0, "favorite"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    const-string v0, "qrContact"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    const-string v0, "qrEmail"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    const-string v0, "qrEvent"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    const-string v0, "qrLocation"

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    const-string v0, "qrMessage"

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    const-string v0, "qrProduct"

    .line 13
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    const-string v0, "qrTelephone"

    .line 14
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    const-string v0, "qrText"

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    const-string v0, "qrUrl"

    .line 16
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    const-string v0, "qrWifi"

    .line 17
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->idIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->typeIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->titleIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->createdIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->favoriteIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrContactIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEmailIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrEventIndex:J

    .line 12
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrLocationIndex:J

    .line 13
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrMessageIndex:J

    .line 14
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrProductIndex:J

    .line 15
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTelephoneIndex:J

    .line 16
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrTextIndex:J

    .line 17
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrUrlIndex:J

    .line 18
    iget-wide v0, p1, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    iput-wide v0, p2, Lio/realm/QRCodeEntityRealmProxy$QRCodeEntityColumnInfo;->qrWifiIndex:J

    return-void
.end method
