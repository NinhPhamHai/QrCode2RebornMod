.class final Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QRTelephoneRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QRTelephoneColumnInfo"
.end annotation


# instance fields
.field numberIndex:J

.field raw_dataIndex:J

.field telURIIndex:J

.field titleIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 8
    invoke-virtual {p0, p1, p0}, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QRTelephone"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->raw_dataIndex:J

    const-string v0, "number"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->numberIndex:J

    const-string v0, "telURI"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->telURIIndex:J

    const-string v0, "title"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->titleIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->numberIndex:J

    iput-wide v0, p2, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->numberIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->telURIIndex:J

    iput-wide v0, p2, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->telURIIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->titleIndex:J

    iput-wide v0, p2, Lio/realm/QRTelephoneRealmProxy$QRTelephoneColumnInfo;->titleIndex:J

    return-void
.end method
