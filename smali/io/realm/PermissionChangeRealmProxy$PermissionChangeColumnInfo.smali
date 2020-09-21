.class final Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionChangeRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionChangeColumnInfo"
.end annotation


# instance fields
.field createdAtIndex:J

.field idIndex:J

.field mayManageIndex:J

.field mayReadIndex:J

.field mayWriteIndex:J

.field metadataKeyIndex:J

.field metadataNameSpaceIndex:J

.field metadataValueIndex:J

.field realmUrlIndex:J

.field statusCodeIndex:J

.field statusMessageIndex:J

.field updatedAtIndex:J

.field userIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 17
    invoke-virtual {p0, p1, p0}, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "PermissionChange"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    const-string v0, "createdAt"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    const-string v0, "updatedAt"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    const-string v0, "statusCode"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    const-string v0, "statusMessage"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const-string v0, "realmUrl"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const-string v0, "userId"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const-string v0, "metadataKey"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const-string v0, "metadataValue"

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const-string v0, "metadataNameSpace"

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const-string v0, "mayRead"

    .line 13
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    const-string v0, "mayWrite"

    .line 14
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    const-string v0, "mayManage"

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 3
    check-cast p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    .line 12
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    .line 13
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    .line 14
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    .line 15
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    .line 16
    iget-wide v0, p1, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    iput-wide v0, p2, Lio/realm/PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    return-void
.end method
