.class final Lio/realm/RealmObjectSchema$FieldMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmObjectSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldMetaData"
.end annotation


# instance fields
.field final defaultNullable:Z

.field final realmType:Lio/realm/RealmFieldType;


# direct methods
.method constructor <init>(Lio/realm/RealmFieldType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/RealmObjectSchema$FieldMetaData;->realmType:Lio/realm/RealmFieldType;

    .line 3
    iput-boolean p2, p0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    return-void
.end method
