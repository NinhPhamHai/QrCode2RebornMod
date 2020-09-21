.class public Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmMigration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Lio/realm/DynamicRealm;JJ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    const-string p2, "SearchProduct"

    .line 2
    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p3

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p4, [Lio/realm/FieldAttribute;

    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    aput-object v1, v0, p5

    const-string v1, "product_id"

    .line 4
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "barcode"

    .line 5
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "name"

    .line 6
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "model"

    .line 7
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "manufacturer"

    .line 8
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "image"

    .line 9
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "avg_price"

    .line 10
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "spec"

    .line 11
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "feature"

    .line 12
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    new-array v0, p5, [Lio/realm/FieldAttribute;

    const-string v1, "description"

    .line 13
    invoke-virtual {p2, v1, p3, v0}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    new-instance p3, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/a;

    invoke-direct {p3, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/c;)V

    .line 14
    invoke-virtual {p2, p3}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_0
    const-string p2, "CreatedQRCode"

    .line 15
    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p3

    if-nez p3, :cond_1

    .line 16
    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    new-array p3, p4, [Lio/realm/FieldAttribute;

    sget-object p4, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    aput-object p4, p3, p5

    const-string p4, "id"

    .line 17
    invoke-virtual {p1, p4, p2, p3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    new-array p3, p5, [Lio/realm/FieldAttribute;

    const-string p4, "type"

    .line 18
    invoke-virtual {p1, p4, p2, p3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    new-array p3, p5, [Lio/realm/FieldAttribute;

    const-string p4, "title"

    .line 19
    invoke-virtual {p1, p4, p2, p3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    new-array p3, p5, [Lio/realm/FieldAttribute;

    const-string p4, "raw_text"

    .line 20
    invoke-virtual {p1, p4, p2, p3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array p3, p5, [Lio/realm/FieldAttribute;

    const-string p4, "created"

    .line 21
    invoke-virtual {p1, p4, p2, p3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array p3, p5, [Lio/realm/FieldAttribute;

    const-string p4, "updated"

    .line 22
    invoke-virtual {p1, p4, p2, p3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/b;

    invoke-direct {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/c;)V

    .line 23
    invoke-virtual {p1, p2}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_1
    return-void
.end method
