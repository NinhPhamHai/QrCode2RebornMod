.class final Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/CreatedQRCodeRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CreatedQRCodeColumnInfo"
.end annotation


# instance fields
.field createdIndex:J

.field idIndex:J

.field raw_textIndex:J

.field titleIndex:J

.field typeIndex:J

.field updatedIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 10
    invoke-virtual {p0, p1, p0}, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "CreatedQRCode"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->idIndex:J

    const-string v0, "type"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->typeIndex:J

    const-string v0, "title"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->titleIndex:J

    const-string v0, "raw_text"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->raw_textIndex:J

    const-string v0, "created"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->createdIndex:J

    const-string v0, "updated"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->updatedIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;

    .line 3
    check-cast p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->idIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->typeIndex:J

    iput-wide v0, p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->typeIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->titleIndex:J

    iput-wide v0, p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->titleIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->raw_textIndex:J

    iput-wide v0, p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->raw_textIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->createdIndex:J

    iput-wide v0, p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->createdIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->updatedIndex:J

    iput-wide v0, p2, Lio/realm/CreatedQRCodeRealmProxy$CreatedQRCodeColumnInfo;->updatedIndex:J

    return-void
.end method
