.class public Lio/realm/internal/Table;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/TableSchema;
.implements Lio/realm/internal/NativeObject;


# static fields
.field public static final CLASS_NAME_MAX_LENGTH:I

.field public static final INFINITE:J = -0x1L

.field public static final NOT_NULLABLE:Z = false

.field public static final NO_MATCH:I = -0x1

.field public static final NO_PRIMARY_KEY:J = -0x2L

.field public static final NULLABLE:Z = true

.field private static final PRIMARY_KEY_CLASS_COLUMN_INDEX:J = 0x0L

.field private static final PRIMARY_KEY_CLASS_COLUMN_NAME:Ljava/lang/String; = "pk_table"

.field private static final PRIMARY_KEY_FIELD_COLUMN_INDEX:J = 0x1L

.field private static final PRIMARY_KEY_FIELD_COLUMN_NAME:Ljava/lang/String; = "pk_property"

.field private static final PRIMARY_KEY_TABLE_NAME:Ljava/lang/String; = "pk"

.field private static final TABLE_NAME_MAX_LENGTH:I = 0x3f

.field private static final TABLE_PREFIX:Ljava/lang/String;

.field private static final nativeFinalizerPtr:J


# instance fields
.field private cachedPrimaryKeyColumnIndex:J

.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field private final sharedRealm:Lio/realm/internal/SharedRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/Util;->getTablePrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    .line 2
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    sput v0, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    .line 3
    invoke-static {}, Lio/realm/internal/Table;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Table;->nativeFinalizerPtr:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/SharedRealm;J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    .line 4
    iget-object v0, p1, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/NativeContext;

    .line 5
    iput-object p1, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 6
    iput-wide p2, p0, Lio/realm/internal/Table;->nativePtr:J

    .line 7
    iget-object p1, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;J)V
    .locals 0

    .line 1
    iget-object p1, p1, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-direct {p0, p1, p2, p3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-void
.end method

.method public static getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPrimaryKeyTable()Lio/realm/internal/Table;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "pk"

    .line 2
    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->createTable(Ljava/lang/String;)Lio/realm/internal/Table;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 6
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 7
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "pk_table"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 9
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "pk_property"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    :cond_2
    return-object v0
.end method

.method public static getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invalidateCachedPrimaryKeyIndex()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    return-void
.end method

.method public static isModelTable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/Table;->TABLE_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isPrimaryKey(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPrimaryKeyColumn(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static migratePrimaryKeyTableIfNeeded(Lio/realm/internal/SharedRealm;)Z
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pk"

    .line 2
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getGroupNative()J

    move-result-wide v1

    iget-wide v3, v0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/Table;->nativeMigratePrimaryKeyTableIfNeeded(JJ)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-static {}, Lio/realm/internal/Table;->throwImmutable()V

    const/4 p0, 0x0

    throw p0
.end method

.method private native nativeAddColumn(JILjava/lang/String;Z)J
.end method

.method private native nativeAddColumnLink(JILjava/lang/String;J)J
.end method

.method private native nativeAddSearchIndex(JJ)V
.end method

.method private native nativeClear(J)V
.end method

.method private native nativeConvertColumnToNotNullable(JJZ)V
.end method

.method private native nativeConvertColumnToNullable(JJZ)V
.end method

.method private native nativeCountDouble(JJD)J
.end method

.method private native nativeCountFloat(JJF)J
.end method

.method private native nativeCountLong(JJJ)J
.end method

.method private native nativeCountString(JJLjava/lang/String;)J
.end method

.method private native nativeFindFirstBool(JJZ)J
.end method

.method private native nativeFindFirstDouble(JJD)J
.end method

.method private native nativeFindFirstFloat(JJF)J
.end method

.method public static native nativeFindFirstInt(JJJ)J
.end method

.method public static native nativeFindFirstNull(JJ)J
.end method

.method public static native nativeFindFirstString(JJLjava/lang/String;)J
.end method

.method private native nativeFindFirstTimestamp(JJJ)J
.end method

.method private native nativeGetBoolean(JJJ)Z
.end method

.method private native nativeGetByteArray(JJJ)[B
.end method

.method private native nativeGetColumnCount(J)J
.end method

.method private native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method private native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method private native nativeGetColumnType(JJ)I
.end method

.method private native nativeGetDouble(JJJ)D
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGetFloat(JJJ)F
.end method

.method private native nativeGetLink(JJJ)J
.end method

.method private native nativeGetLinkTarget(JJ)J
.end method

.method private native nativeGetLong(JJJ)J
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method

.method private native nativeGetSortedViewMulti(J[J[Z)J
.end method

.method private native nativeGetString(JJJ)Ljava/lang/String;
.end method

.method private native nativeGetTimestamp(JJJ)J
.end method

.method private native nativeHasSameSchema(JJ)Z
.end method

.method private native nativeHasSearchIndex(JJ)Z
.end method

.method public static native nativeIncrementLong(JJJJ)V
.end method

.method private static native nativeInsertColumn(JJILjava/lang/String;)V
.end method

.method private native nativeIsColumnNullable(JJ)Z
.end method

.method private native nativeIsNull(JJJ)Z
.end method

.method private native nativeIsNullLink(JJJ)Z
.end method

.method private native nativeIsValid(J)Z
.end method

.method private native nativeLowerBoundInt(JJJ)J
.end method

.method private static native nativeMigratePrimaryKeyTableIfNeeded(JJ)Z
.end method

.method private native nativeMoveLastOver(JJ)V
.end method

.method public static native nativeNullifyLink(JJJ)V
.end method

.method private static native nativePrimaryKeyTableNeedsMigration(J)Z
.end method

.method private native nativeRemoveColumn(JJ)V
.end method

.method private native nativeRemoveSearchIndex(JJ)V
.end method

.method private native nativeRenameColumn(JJLjava/lang/String;)V
.end method

.method public static native nativeSetBoolean(JJJZZ)V
.end method

.method public static native nativeSetByteArray(JJJ[BZ)V
.end method

.method public static native nativeSetDouble(JJJDZ)V
.end method

.method public static native nativeSetFloat(JJJFZ)V
.end method

.method public static native nativeSetLink(JJJJZ)V
.end method

.method public static native nativeSetLong(JJJJZ)V
.end method

.method public static native nativeSetLongUnique(JJJJ)V
.end method

.method public static native nativeSetNull(JJJZ)V
.end method

.method public static native nativeSetNullUnique(JJJ)V
.end method

.method private native nativeSetPrimaryKey(JJLjava/lang/String;)J
.end method

.method public static native nativeSetString(JJJLjava/lang/String;Z)V
.end method

.method public static native nativeSetStringUnique(JJJLjava/lang/String;)V
.end method

.method public static native nativeSetTimestamp(JJJJZ)V
.end method

.method private native nativeSize(J)J
.end method

.method private native nativeToJson(J)Ljava/lang/String;
.end method

.method private native nativeUpperBoundInt(JJJ)J
.end method

.method private native nativeVersion(J)J
.end method

.method private native nativeWhere(J)J
.end method

.method public static primaryKeyTableNeedsMigration(Lio/realm/internal/SharedRealm;)Z
    .locals 2

    const-string v0, "pk"

    .line 1
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p0

    .line 3
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Table;->nativePrimaryKeyTableNeedsMigration(J)Z

    move-result p0

    return p0
.end method

.method public static throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwImmutable()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify managed objects outside of a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyColumnName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column names are currently limited to max 63 characters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lio/realm/internal/Table;->verifyColumnName(Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeAddColumn(JILjava/lang/String;Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lio/realm/internal/Table;->verifyColumnName(Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v3

    iget-wide v5, p3, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeAddColumnLink(JILjava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public addSearchIndex(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeAddSearchIndex(JJ)V

    return-void
.end method

.method checkDuplicatedNullForPrimaryKeyValue(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKeyColumn(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 3
    sget-object v1, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_2

    const-wide/16 p3, -0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    .line 5
    invoke-static {p1}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method checkImmutable()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lio/realm/internal/Table;->throwImmutable()V

    const/4 v0, 0x0

    throw v0
.end method

.method checkIntValueIsLegal(JJJ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKeyColumn(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p5, p6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    const-wide/16 p3, -0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method checkStringValueIsLegal(JJLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKey(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p5}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    const-wide/16 p3, -0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p5}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeClear(J)V

    return-void
.end method

.method public convertColumnToNotNullable(J)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKey(J)Z

    move-result v5

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeConvertColumnToNotNullable(JJZ)V

    return-void
.end method

.method public convertColumnToNullable(J)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->isPrimaryKey(J)Z

    move-result v5

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeConvertColumnToNullable(JJZ)V

    return-void
.end method

.method public count(JD)J
    .locals 7

    .line 3
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeCountDouble(JJD)J

    move-result-wide p1

    return-wide p1
.end method

.method public count(JF)J
    .locals 6

    .line 2
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeCountFloat(JJF)J

    move-result-wide p1

    return-wide p1
.end method

.method public count(JJ)J
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeCountLong(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public count(JLjava/lang/String;)J
    .locals 6

    .line 4
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeCountString(JJLjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public findFirstBoolean(JZ)J
    .locals 6

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstBool(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public findFirstDate(JLjava/util/Date;)J
    .locals 7

    if-eqz p3, :cond_0

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeFindFirstTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findFirstDouble(JD)J
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeFindFirstDouble(JJD)J

    move-result-wide p1

    return-wide p1
.end method

.method public findFirstFloat(JF)J
    .locals 6

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstFloat(JJF)J

    move-result-wide p1

    return-wide p1
.end method

.method public findFirstLong(JJ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public findFirstNull(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public findFirstString(JLjava/lang/String;)J
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide p1

    return-wide p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBinaryByteArray(JJ)[B
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetByteArray(JJJ)[B

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(JJ)Z
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetBoolean(JJJ)Z

    move-result p1

    return p1
.end method

.method public getCheckedRow(J)Lio/realm/internal/CheckedRow;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/NativeContext;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/CheckedRow;->get(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/Table;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Column name can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result p1

    invoke-static {p1}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object p1

    return-object p1
.end method

.method public getDate(JJ)Ljava/util/Date;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/Table;->nativeGetTimestamp(JJJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDouble(JJ)D
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetDouble(JJJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(JJ)F
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetFloat(JJJ)F

    move-result p1

    return p1
.end method

.method public getLink(JJ)J
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetLink(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLinkTarget(J)Lio/realm/internal/Table;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetLinkTarget(JJ)J

    move-result-wide p1

    .line 2
    new-instance v0, Lio/realm/internal/Table;

    iget-object v1, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-direct {v0, v1, p1, p2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object v0
.end method

.method public getLong(JJ)J
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetLong(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/Table;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    return-wide v0
.end method

.method public getPrimaryKey()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    const-wide/16 v4, -0x2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/realm/internal/Table;->getPrimaryKeyTable()Lio/realm/internal/Table;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v4

    .line 3
    :cond_1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v6, -0x1

    cmp-long v3, v1, v6

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/UncheckedRow;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    goto :goto_0

    .line 6
    :cond_2
    iput-wide v4, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    .line 7
    :goto_0
    iget-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    return-wide v0

    .line 8
    :cond_3
    :goto_1
    iget-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    return-wide v0
.end method

.method getSharedRealm()Lio/realm/internal/SharedRealm;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    return-object v0
.end method

.method public getString(JJ)Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeGetString(JJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 0

    return-object p0
.end method

.method public getUncheckedRow(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/NativeContext;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getByRowIndex(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/NativeContext;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getByRowPointer(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPrimaryKey()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameSchema(Lio/realm/internal/Table;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    iget-wide v2, p1, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeHasSameSchema(JJ)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasSearchIndex(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeHasSearchIndex(JJ)Z

    move-result p1

    return p1
.end method

.method public incrementLong(JJJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeIncrementLong(JJJJ)V

    return-void
.end method

.method public insertColumn(JLio/realm/RealmFieldType;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0, p4}, Lio/realm/internal/Table;->verifyColumnName(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p3}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    move-wide v2, p1

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeInsertColumn(JJILjava/lang/String;)V

    return-void
.end method

.method public isColumnNullable(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeIsColumnNullable(JJ)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isImmutable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull(JJ)Z
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeIsNull(JJJ)Z

    move-result p1

    return p1
.end method

.method public isNullLink(JJ)Z
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeIsNullLink(JJJ)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeIsValid(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lowerBoundLong(JJ)J
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeLowerBoundInt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public moveLastOver(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeMoveLastOver(JJ)V

    return-void
.end method

.method native nativeGetRowPtr(JJ)J
.end method

.method public nullifyLink(JJ)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    return-void
.end method

.method public removeColumn(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lio/realm/internal/Table;->nativeRemoveColumn(JJ)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 4
    invoke-direct {p0}, Lio/realm/internal/Table;->invalidateCachedPrimaryKeyIndex()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSearchIndex(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeRemoveSearchIndex(JJ)V

    return-void
.end method

.method public renameColumn(JLjava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v0, p3

    .line 1
    invoke-direct {v7, v0}, Lio/realm/internal/Table;->verifyColumnName(Ljava/lang/String;)V

    .line 2
    iget-wide v1, v7, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {v7, v1, v2, v8, v9}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v18

    .line 3
    invoke-virtual/range {p0 .. p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v10

    .line 4
    iget-wide v2, v7, Lio/realm/internal/Table;->nativePtr:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeRenameColumn(JJLjava/lang/String;)V

    cmp-long v1, v10, v8

    if-nez v1, :cond_2

    .line 5
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lio/realm/internal/Table;->getPrimaryKeyTable()Lio/realm/internal/Table;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v14

    const-wide/16 v2, -0x1

    cmp-long v4, v14, v2

    if-eqz v4, :cond_0

    .line 7
    iget-wide v10, v1, Lio/realm/internal/Table;->nativePtr:J

    const-wide/16 v12, 0x1

    const/16 v17, 0x0

    move-object/from16 v16, p3

    invoke-static/range {v10 .. v17}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Non-existent PrimaryKey column cannot be renamed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table is not created from a SharedRealm, primary key is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 10
    iget-wide v2, v7, Lio/realm/internal/Table;->nativePtr:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeRenameColumn(JJLjava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public setBinaryByteArray(JJ[BZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetByteArray(JJJ[BZ)V

    return-void
.end method

.method public setBoolean(JJZZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-void
.end method

.method public setDate(JJLjava/util/Date;Z)V
    .locals 9

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v2, p1

    move-wide v4, p3

    move v8, p6

    invoke-static/range {v0 .. v8}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null Date is not allowed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDouble(JJDZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    move-object v0, p0

    .line 2
    iget-wide v1, v0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lio/realm/internal/Table;->nativeSetDouble(JJJDZ)V

    return-void
.end method

.method public setFloat(JJFZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    return-void
.end method

.method public setLink(JJJZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    move-object v0, p0

    .line 2
    iget-wide v1, v0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    return-void
.end method

.method public setLong(JJJZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    invoke-virtual/range {p0 .. p6}, Lio/realm/internal/Table;->checkIntValueIsLegal(JJJ)V

    move-object v0, p0

    .line 3
    iget-wide v1, v0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-void
.end method

.method public setNull(JJZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/internal/Table;->checkDuplicatedNullForPrimaryKeyValue(JJ)V

    .line 3
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    return-void
.end method

.method public setPrimaryKey(J)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    return-void
.end method

.method public setPrimaryKey(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lio/realm/internal/Table;->getPrimaryKeyTable()Lio/realm/internal/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v2, v0, Lio/realm/internal/Table;->nativePtr:J

    iget-wide v4, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeSetPrimaryKey(JJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->cachedPrimaryKeyColumnIndex:J

    return-void

    .line 3
    :cond_0
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary keys are only supported if Table is part of a Group"

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(JJLjava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->checkImmutable()V

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/internal/Table;->checkDuplicatedNullForPrimaryKeyValue(JJ)V

    .line 3
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lio/realm/internal/Table;->checkStringValueIsLegal(JJLjava/lang/String;)V

    .line 5
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeToJson(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The Table "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "has \'"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' field as a PrimaryKey, and "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "contains "

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " columns: "

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    int-to-long v4, v2

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    if-eqz v2, :cond_2

    const-string v6, ", "

    .line 13
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "."

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " And "

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lio/realm/internal/Table;->size()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " rows."

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperBoundLong(JJ)J
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/Table;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/Table;->nativeUpperBoundInt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public where()Lio/realm/internal/TableQuery;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v0

    .line 2
    new-instance v2, Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/internal/Table;->context:Lio/realm/internal/NativeContext;

    invoke-direct {v2, v3, p0, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v2
.end method
