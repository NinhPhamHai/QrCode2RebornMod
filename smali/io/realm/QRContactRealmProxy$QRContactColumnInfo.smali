.class final Lio/realm/QRContactRealmProxy$QRContactColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/QRContactRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QRContactColumnInfo"
.end annotation


# instance fields
.field addressIndex:J

.field birthdayIndex:J

.field emailIndex:J

.field first_nameIndex:J

.field jobIndex:J

.field last_nameIndex:J

.field phoneIndex:J

.field raw_dataIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 12
    invoke-virtual {p0, p1, p0}, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "QRContact"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "raw_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->raw_dataIndex:J

    const-string v0, "first_name"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->first_nameIndex:J

    const-string v0, "last_name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->last_nameIndex:J

    const-string v0, "address"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->addressIndex:J

    const-string v0, "phone"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->phoneIndex:J

    const-string v0, "email"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->emailIndex:J

    const-string v0, "job"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->jobIndex:J

    const-string v0, "birthday"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->birthdayIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;

    .line 3
    check-cast p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->raw_dataIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->raw_dataIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->first_nameIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->first_nameIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->last_nameIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->last_nameIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->addressIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->addressIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->phoneIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->phoneIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->emailIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->emailIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->jobIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->jobIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->birthdayIndex:J

    iput-wide v0, p2, Lio/realm/QRContactRealmProxy$QRContactColumnInfo;->birthdayIndex:J

    return-void
.end method
