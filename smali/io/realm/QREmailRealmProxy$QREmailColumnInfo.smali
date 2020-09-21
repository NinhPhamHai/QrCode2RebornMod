.class final Lio/realm/QREmailRealmProxy$QREmailColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QREmailRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QREmailColumnInfo"
.end annotation


# instance fields
.field bccsIndex:J

.field bodyIndex:J

.field ccsIndex:J

.field raw_dataIndex:J

.field subjectIndex:J

.field tosIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 10
    invoke-virtual {p0, p1, p0}, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QREmail"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->raw_dataIndex:J

    const-string v0, "tos"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->tosIndex:J

    const-string v0, "ccs"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->ccsIndex:J

    const-string v0, "bccs"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->bccsIndex:J

    const-string v0, "subject"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->subjectIndex:J

    const-string v0, "body"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->bodyIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->tosIndex:J

    iput-wide v0, p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->tosIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->ccsIndex:J

    iput-wide v0, p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->ccsIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->bccsIndex:J

    iput-wide v0, p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->bccsIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->subjectIndex:J

    iput-wide v0, p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->subjectIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->bodyIndex:J

    iput-wide v0, p2, Lio/realm/QREmailRealmProxy$QREmailColumnInfo;->bodyIndex:J

    return-void
.end method
