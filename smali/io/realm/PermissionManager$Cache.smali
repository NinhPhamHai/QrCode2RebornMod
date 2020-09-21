.class Lio/realm/PermissionManager$Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field public instanceCounter:Ljava/lang/Integer;

.field public pm:Lio/realm/PermissionManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/PermissionManager$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lio/realm/PermissionManager$Cache;-><init>()V

    return-void
.end method
