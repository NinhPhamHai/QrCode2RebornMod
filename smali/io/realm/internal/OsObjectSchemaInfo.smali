.class public Lio/realm/internal/OsObjectSchemaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObjectSchemaInfo$Builder;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    .line 5
    sget-object p1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeCreateRealmObjectSchema(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(J)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/realm/internal/OsObjectSchemaInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method static synthetic access$200(JJZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/realm/internal/OsObjectSchemaInfo;->nativeAddProperty(JJZ)V

    return-void
.end method

.method private static native nativeAddProperty(JJZ)V
.end method

.method private static native nativeCreateRealmObjectSchema(Ljava/lang/String;)J
.end method

.method private static native nativeGetClassName(J)Ljava/lang/String;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetProperty(JLjava/lang/String;)J
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetClassName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;)Lio/realm/internal/Property;
    .locals 3

    .line 1
    new-instance v0, Lio/realm/internal/Property;

    iget-wide v1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetProperty(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Property;-><init>(J)V

    return-object v0
.end method
