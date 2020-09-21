.class public Lio/realm/internal/OsRealmConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsRealmConfig$Builder;,
        Lio/realm/internal/OsRealmConfig$SchemaMode;,
        Lio/realm/internal/OsRealmConfig$Durability;
    }
.end annotation


# static fields
.field private static final SCHEMA_MODE_VALUE_ADDITIVE:B = 0x4t

.field private static final SCHEMA_MODE_VALUE_AUTOMATIC:B = 0x0t

.field private static final SCHEMA_MODE_VALUE_IMMUTABLE:B = 0x1t

.field private static final SCHEMA_MODE_VALUE_MANUAL:B = 0x5t

.field private static final SCHEMA_MODE_VALUE_READONLY:B = 0x2t

.field private static final SCHEMA_MODE_VALUE_RESET_FILE:B = 0x3t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

.field private final context:Lio/realm/internal/NativeContext;

.field private final initializationCallback:Lio/realm/internal/SharedRealm$InitializationCallback;

.field private final migrationCallback:Lio/realm/internal/SharedRealm$MigrationCallback;

.field private final nativePtr:J

.field private final realmConfiguration:Lio/realm/RealmConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsRealmConfig;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/SharedRealm$MigrationCallback;Lio/realm/internal/SharedRealm$InitializationCallback;)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/realm/internal/NativeContext;

    invoke-direct {v0}, Lio/realm/internal/NativeContext;-><init>()V

    iput-object v0, v9, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    move-object/from16 v11, p1

    .line 4
    iput-object v11, v9, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/realm/internal/OsRealmConfig;->nativeCreate(Ljava/lang/String;ZZ)J

    move-result-wide v3

    iput-wide v3, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 6
    sget-object v0, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {v0, v9}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 7
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v3, v9, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, v3}, Lio/realm/internal/ObjectServerFacade;->getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;

    move-result-object v0

    .line 8
    aget-object v3, v0, v2

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    .line 9
    aget-object v3, v0, v1

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    const/4 v3, 0x2

    .line 10
    aget-object v3, v0, v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    const/4 v3, 0x3

    .line 11
    aget-object v3, v0, v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    .line 12
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v3, 0x5

    .line 13
    aget-object v0, v0, v3

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-wide v3, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v3, v4, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetEncryptionKey(J[B)V

    .line 16
    :cond_0
    iget-wide v3, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/OsRealmConfig$Durability;

    move-result-object v0

    sget-object v5, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3, v4, v1}, Lio/realm/internal/OsRealmConfig;->nativeSetInMemory(JZ)V

    .line 17
    iget-wide v0, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsRealmConfig;->nativeEnableChangeNotification(JZ)V

    .line 18
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_1

    :cond_2
    if-eqz v12, :cond_3

    .line 21
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->shouldDeleteRealmIfMigrationNeeded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 24
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v4

    if-nez p3, :cond_5

    const-wide/16 v1, 0x0

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lio/realm/internal/OsSchemaInfo;->getNativePtr()J

    move-result-wide v1

    :goto_2
    move-object/from16 v7, p4

    move-wide/from16 v16, v1

    .line 26
    iput-object v7, v9, Lio/realm/internal/OsRealmConfig;->migrationCallback:Lio/realm/internal/SharedRealm$MigrationCallback;

    .line 27
    iget-wide v1, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig$SchemaMode;->getNativeValue()B

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v18, v6

    move-wide/from16 v6, v16

    move/from16 v19, v8

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lio/realm/internal/OsRealmConfig;->nativeSetSchemaConfig(JBJJLio/realm/internal/SharedRealm$MigrationCallback;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getCompactOnLaunchCallback()Lio/realm/CompactOnLaunchCallback;

    move-result-object v0

    iput-object v0, v9, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    .line 29
    iget-object v0, v9, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    if-eqz v0, :cond_6

    .line 30
    iget-wide v1, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v1, v2, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V

    .line 31
    :cond_6
    iput-object v10, v9, Lio/realm/internal/OsRealmConfig;->initializationCallback:Lio/realm/internal/SharedRealm$InitializationCallback;

    if-eqz v10, :cond_7

    .line 32
    iget-wide v0, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-direct {v9, v0, v1, v10}, Lio/realm/internal/OsRealmConfig;->nativeSetInitializationCallback(JLio/realm/internal/SharedRealm$InitializationCallback;)V

    :cond_7
    if-eqz v12, :cond_8

    .line 33
    iget-wide v10, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static/range {v10 .. v15}, Lio/realm/internal/OsRealmConfig;->nativeCreateAndSetSyncConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-wide v0, v9, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move-object/from16 v3, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/SharedRealm$MigrationCallback;Lio/realm/internal/SharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/SharedRealm$MigrationCallback;Lio/realm/internal/SharedRealm$InitializationCallback;)V

    return-void
.end method

.method private static native nativeCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeCreateAndSetSyncConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEnableChangeNotification(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V
.end method

.method private static native nativeSetEncryptionKey(J[B)V
.end method

.method private static native nativeSetInMemory(JZ)V
.end method

.method private native nativeSetInitializationCallback(JLio/realm/internal/SharedRealm$InitializationCallback;)V
.end method

.method private native nativeSetSchemaConfig(JBJJLio/realm/internal/SharedRealm$MigrationCallback;)V
.end method

.method private static native nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V
.end method


# virtual methods
.method getContext()Lio/realm/internal/NativeContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    return-wide v0
.end method

.method public getRealmConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-object v0
.end method
