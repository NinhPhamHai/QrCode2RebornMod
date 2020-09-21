.class Lio/realm/PermissionManager$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;->getInstance(Lio/realm/SyncUser;)Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/PermissionManager$Cache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/PermissionManager$Cache;
    .locals 2

    .line 2
    new-instance v0, Lio/realm/PermissionManager$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/PermissionManager$Cache;-><init>(Lio/realm/PermissionManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/PermissionManager$1;->initialValue()Lio/realm/PermissionManager$Cache;

    move-result-object v0

    return-object v0
.end method
