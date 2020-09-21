.class Lio/realm/MutableRealmObjectSchema;
.super Lio/realm/RealmObjectSchema;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/RealmObjectSchema$DynamicColumnIndices;

    invoke-direct {v0, p3}, Lio/realm/RealmObjectSchema$DynamicColumnIndices;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method private addModifiers(Ljava/lang/String;[Lio/realm/FieldAttribute;)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_2

    .line 2
    sget-object v1, Lio/realm/FieldAttribute;->INDEXED:Lio/realm/FieldAttribute;

    invoke-direct {p0, p2, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    const/4 v0, 0x1

    .line 4
    :cond_0
    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    invoke-direct {p0, p2, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v1, v2}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 8
    :cond_1
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method private checkEmpty(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkFieldNameIsAvailable(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field already exists in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNewFieldName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    return-void
.end method

.method private containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-ne v3, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public varargs addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object p3, Lio/realm/RealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Use addRealmObjectField() instead to add fields that link to other RealmObjects: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "Realm doesn\'t support this field type: %s(%s)"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkNewFieldName(Ljava/lang/String;)V

    .line 6
    iget-boolean p2, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    .line 7
    sget-object v2, Lio/realm/FieldAttribute;->REQUIRED:Lio/realm/FieldAttribute;

    invoke-direct {p0, p3, v2}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p2, 0x0

    .line 8
    :cond_2
    iget-object v1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v0, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->realmType:Lio/realm/RealmFieldType;

    invoke-virtual {v1, v0, p1, p2}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/realm/MutableRealmObjectSchema;->addModifiers(Ljava/lang/String;[Lio/realm/FieldAttribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p2, v0, v1}, Lio/realm/internal/Table;->removeColumn(J)V

    .line 11
    throw p1
.end method

.method public addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->addSearchIndex(J)V

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has an index."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 6
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->addSearchIndex(J)V

    :cond_0
    return-object p0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A primary key is already defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRealmListField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    return-object p0
.end method

.method public addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    return-object p0
.end method

.method public removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->removeColumn(J)V

    return-object p0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field is not indexed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePrimaryKey()Lio/realm/RealmObjectSchema;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 6
    :cond_0
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have a primary key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p2}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 7
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1, p2}, Lio/realm/internal/Table;->renameColumn(JLjava/lang/String;)V

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkEmpty(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    if-gt v1, v2, :cond_3

    .line 5
    iget-object v1, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getPrimaryKey()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v3, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/realm/internal/SharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lio/realm/internal/SharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    throw v0

    :cond_1
    :goto_1
    return-object p0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Class name is too long. Limit is %1$d characters: \'%2$s\' (%3$d)"

    .line 18
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNullable(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/realm/MutableRealmObjectSchema;->setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;

    return-object p0
.end method

.method public setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->isRequired(Ljava/lang/String;)Z

    move-result v2

    .line 3
    iget-object v3, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    .line 4
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_6

    .line 5
    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_5

    if-eqz p2, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field is already required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field is already nullable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 8
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->convertColumnToNotNullable(J)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->convertColumnToNullable(J)V

    :goto_2
    return-object p0

    .line 10
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify the required state for RealmList references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify the required state for RealmObject references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 2
    new-instance v4, Lio/realm/DynamicRealmObject;

    iget-object v5, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v6, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v6, v2, v3}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    invoke-interface {p1, v4}, Lio/realm/RealmObjectSchema$Function;->apply(Lio/realm/DynamicRealmObject;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-object p0
.end method
