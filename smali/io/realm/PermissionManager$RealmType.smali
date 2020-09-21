.class final enum Lio/realm/PermissionManager$RealmType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RealmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/PermissionManager$RealmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/PermissionManager$RealmType;

.field public static final enum DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

.field public static final enum MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

.field public static final enum PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;


# instance fields
.field private final globalRealm:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/realm/PermissionManager$RealmType;

    const-string v1, "__permission"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DEFAULT_PERMISSION_REALM"

    invoke-direct {v0, v4, v3, v1, v2}, Lio/realm/PermissionManager$RealmType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/realm/PermissionManager$RealmType;->DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 2
    new-instance v0, Lio/realm/PermissionManager$RealmType;

    const-string v4, "PERMISSION_REALM"

    invoke-direct {v0, v4, v2, v1, v3}, Lio/realm/PermissionManager$RealmType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/realm/PermissionManager$RealmType;->PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 3
    new-instance v0, Lio/realm/PermissionManager$RealmType;

    const/4 v1, 0x2

    const-string v4, "MANAGEMENT_REALM"

    const-string v5, "__management"

    invoke-direct {v0, v4, v1, v5, v3}, Lio/realm/PermissionManager$RealmType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/realm/PermissionManager$RealmType;->MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lio/realm/PermissionManager$RealmType;

    sget-object v4, Lio/realm/PermissionManager$RealmType;->DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    aput-object v4, v0, v3

    sget-object v3, Lio/realm/PermissionManager$RealmType;->PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    aput-object v3, v0, v2

    sget-object v2, Lio/realm/PermissionManager$RealmType;->MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

    aput-object v2, v0, v1

    sput-object v0, Lio/realm/PermissionManager$RealmType;->$VALUES:[Lio/realm/PermissionManager$RealmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/realm/PermissionManager$RealmType;->name:Ljava/lang/String;

    .line 3
    iput-boolean p4, p0, Lio/realm/PermissionManager$RealmType;->globalRealm:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/PermissionManager$RealmType;
    .locals 1

    .line 1
    const-class v0, Lio/realm/PermissionManager$RealmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/PermissionManager$RealmType;

    return-object p0
.end method

.method public static values()[Lio/realm/PermissionManager$RealmType;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/PermissionManager$RealmType;->$VALUES:[Lio/realm/PermissionManager$RealmType;

    invoke-virtual {v0}, [Lio/realm/PermissionManager$RealmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/PermissionManager$RealmType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/PermissionManager$RealmType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobalRealm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/PermissionManager$RealmType;->globalRealm:Z

    return v0
.end method
