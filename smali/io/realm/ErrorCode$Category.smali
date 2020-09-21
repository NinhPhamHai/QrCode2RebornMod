.class public final enum Lio/realm/ErrorCode$Category;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/ErrorCode$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/ErrorCode$Category;

.field public static final enum FATAL:Lio/realm/ErrorCode$Category;

.field public static final enum RECOVERABLE:Lio/realm/ErrorCode$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/realm/ErrorCode$Category;

    const/4 v1, 0x0

    const-string v2, "FATAL"

    invoke-direct {v0, v2, v1}, Lio/realm/ErrorCode$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/ErrorCode$Category;->FATAL:Lio/realm/ErrorCode$Category;

    .line 2
    new-instance v0, Lio/realm/ErrorCode$Category;

    const/4 v2, 0x1

    const-string v3, "RECOVERABLE"

    invoke-direct {v0, v3, v2}, Lio/realm/ErrorCode$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lio/realm/ErrorCode$Category;

    sget-object v3, Lio/realm/ErrorCode$Category;->FATAL:Lio/realm/ErrorCode$Category;

    aput-object v3, v0, v1

    sget-object v1, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/ErrorCode$Category;->$VALUES:[Lio/realm/ErrorCode$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/ErrorCode$Category;
    .locals 1

    .line 1
    const-class v0, Lio/realm/ErrorCode$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/ErrorCode$Category;

    return-object p0
.end method

.method public static values()[Lio/realm/ErrorCode$Category;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/ErrorCode$Category;->$VALUES:[Lio/realm/ErrorCode$Category;

    invoke-virtual {v0}, [Lio/realm/ErrorCode$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/ErrorCode$Category;

    return-object v0
.end method
