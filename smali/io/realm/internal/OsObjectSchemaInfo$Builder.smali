.class public Lio/realm/internal/OsObjectSchemaInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObjectSchemaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private computedPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/Property;",
            ">;"
        }
    .end annotation
.end field

.field private persistedPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyList:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addComputedLinkProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/Property;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/internal/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/Property;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/internal/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/Property;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 1
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo;

    iget-object v1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->className:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo$1;)V

    .line 2
    iget-object v1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/Property;

    .line 3
    invoke-static {v0}, Lio/realm/internal/OsObjectSchemaInfo;->access$100(Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v3

    invoke-virtual {v2}, Lio/realm/internal/Property;->getNativePtr()J

    move-result-wide v5

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lio/realm/internal/OsObjectSchemaInfo;->access$200(JJZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/Property;

    .line 5
    invoke-static {v0}, Lio/realm/internal/OsObjectSchemaInfo;->access$100(Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v3

    invoke-virtual {v2}, Lio/realm/internal/Property;->getNativePtr()J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v6, v2}, Lio/realm/internal/OsObjectSchemaInfo;->access$200(JJZ)V

    goto :goto_1

    :cond_1
    return-object v0
.end method
