.class final Lio/realm/PermissionRealmProxy$PermissionColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionColumnInfo"
.end annotation


# instance fields
.field mayManageIndex:J

.field mayReadIndex:J

.field mayWriteIndex:J

.field pathIndex:J

.field updatedAtIndex:J

.field userIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 10
    invoke-virtual {p0, p1, p0}, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "Permission"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "userId"

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const-string v0, "path"

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const-string v0, "mayRead"

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    const-string v0, "mayWrite"

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    const-string v0, "mayManage"

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    const-string v0, "updatedAt"

    .line 8
    invoke-virtual {p0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 2
    check-cast p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 3
    check-cast p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;

    .line 4
    iget-wide v0, p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    iput-wide v0, p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    .line 5
    iget-wide v0, p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    iput-wide v0, p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    .line 6
    iget-wide v0, p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    iput-wide v0, p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    .line 7
    iget-wide v0, p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    iput-wide v0, p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    .line 8
    iget-wide v0, p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    iput-wide v0, p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    .line 9
    iget-wide v0, p1, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    iput-wide v0, p2, Lio/realm/PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    return-void
.end method
