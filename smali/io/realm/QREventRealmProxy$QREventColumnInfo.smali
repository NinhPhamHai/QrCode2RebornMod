.class final Lio/realm/QREventRealmProxy$QREventColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QREventRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QREventColumnInfo"
.end annotation


# instance fields
.field descriptionIndex:J

.field endAllDayIndex:J

.field endIndex:J

.field latitudeIndex:J

.field locationIndex:J

.field longitudeIndex:J

.field organizerIndex:J

.field raw_dataIndex:J

.field startAllDayIndex:J

.field startIndex:J

.field titleIndex:J

.field urlIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 16
    invoke-virtual {p0, p1, p0}, Lio/realm/QREventRealmProxy$QREventColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QREvent"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->raw_dataIndex:J

    const-string v0, "title"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->titleIndex:J

    const-string v0, "start"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->startIndex:J

    const-string v0, "startAllDay"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->startAllDayIndex:J

    const-string v0, "end"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->endIndex:J

    const-string v0, "endAllDay"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->endAllDayIndex:J

    const-string v0, "location"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->locationIndex:J

    const-string v0, "organizer"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->organizerIndex:J

    const-string v0, "description"

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->descriptionIndex:J

    const-string v0, "url"

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->urlIndex:J

    const-string v0, "latitude"

    .line 13
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->latitudeIndex:J

    const-string v0, "longitude"

    .line 14
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREventRealmProxy$QREventColumnInfo;->longitudeIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QREventRealmProxy$QREventColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QREventRealmProxy$QREventColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->titleIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->titleIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->startIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->startIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->startAllDayIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->startAllDayIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->endIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->endIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->endAllDayIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->endAllDayIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->locationIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->locationIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->organizerIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->organizerIndex:J

    .line 12
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->descriptionIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->descriptionIndex:J

    .line 13
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->urlIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->urlIndex:J

    .line 14
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->latitudeIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->latitudeIndex:J

    .line 15
    iget-wide v0, p1, Lio/realm/QREventRealmProxy$QREventColumnInfo;->longitudeIndex:J

    iput-wide v0, p2, Lio/realm/QREventRealmProxy$QREventColumnInfo;->longitudeIndex:J

    return-void
.end method
