.class final Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QRUrlRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QRUrlColumnInfo"
.end annotation


# instance fields
.field raw_dataIndex:J

.field titleIndex:J

.field uriIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 7
    invoke-virtual {p0, p1, p0}, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QRUrl"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->raw_dataIndex:J

    const-string v0, "uri"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->uriIndex:J

    const-string v0, "title"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->titleIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->uriIndex:J

    iput-wide v0, p2, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->uriIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->titleIndex:J

    iput-wide v0, p2, Lio/realm/QRUrlRealmProxy$QRUrlColumnInfo;->titleIndex:J

    return-void
.end method
