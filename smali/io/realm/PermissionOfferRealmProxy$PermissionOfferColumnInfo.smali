.class final Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionOfferRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionOfferColumnInfo"
.end annotation


# instance fields
.field createdAtIndex:J

.field expiresAtIndex:J

.field idIndex:J

.field mayManageIndex:J

.field mayReadIndex:J

.field mayWriteIndex:J

.field realmUrlIndex:J

.field statusCodeIndex:J

.field statusMessageIndex:J

.field tokenIndex:J

.field updatedAtIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 15
    invoke-virtual {p0, p1, p0}, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "PermissionOffer"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    const-string v0, "createdAt"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    const-string v0, "updatedAt"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    const-string v0, "statusCode"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    const-string v0, "statusMessage"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const-string v0, "token"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const-string v0, "realmUrl"

    .line 9
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const-string v0, "mayRead"

    .line 10
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    const-string v0, "mayWrite"

    .line 11
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    const-string v0, "mayManage"

    .line 12
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    const-string v0, "expiresAt"

    .line 13
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 3
    check-cast p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    .line 10
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    .line 11
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    .line 12
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    .line 13
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    .line 14
    iget-wide v0, p1, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    iput-wide v0, p2, Lio/realm/PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    return-void
.end method
