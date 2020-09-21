.class public interface abstract Lio/realm/PermissionManager$PermissionsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionsCallback"
.end annotation


# virtual methods
.method public abstract onSuccess(Lio/realm/RealmResults;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation
.end method
