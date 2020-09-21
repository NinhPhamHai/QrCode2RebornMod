.class final Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QRLocationRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QRLocationColumnInfo"
.end annotation


# instance fields
.field altitudeIndex:J

.field latitudeIndex:J

.field longitudeIndex:J

.field queryIndex:J

.field raw_dataIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 9
    invoke-virtual {p0, p1, p0}, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QRLocation"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->raw_dataIndex:J

    const-string v0, "latitude"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->latitudeIndex:J

    const-string v0, "longitude"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->longitudeIndex:J

    const-string v0, "altitude"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->altitudeIndex:J

    const-string v0, "query"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->queryIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->latitudeIndex:J

    iput-wide v0, p2, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->latitudeIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->longitudeIndex:J

    iput-wide v0, p2, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->longitudeIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->altitudeIndex:J

    iput-wide v0, p2, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->altitudeIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->queryIndex:J

    iput-wide v0, p2, Lio/realm/QRLocationRealmProxy$QRLocationColumnInfo;->queryIndex:J

    return-void
.end method
