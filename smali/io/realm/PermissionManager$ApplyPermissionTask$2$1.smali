.class Lio/realm/PermissionManager$ApplyPermissionTask$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$ApplyPermissionTask$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/internal/permissions/PermissionChange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$ApplyPermissionTask$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/internal/permissions/PermissionChange;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$PermissionManagerTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object p1, p1, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-static {p1}, Lio/realm/PermissionManager$ApplyPermissionTask;->access$1500(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p1

    invoke-static {p1, p0}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    new-instance v1, Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask$2$1;)V

    invoke-virtual {v0, p1, v1}, Lio/realm/PermissionManager$PermissionManagerTask;->handleServerStatusChanges(Lio/realm/internal/permissions/BasePermissionApi;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->onChange(Lio/realm/internal/permissions/PermissionChange;)V

    return-void
.end method
