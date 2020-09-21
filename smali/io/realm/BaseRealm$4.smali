.class Lio/realm/BaseRealm$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/BaseRealm;->deleteRealm(Lio/realm/RealmConfiguration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$configuration:Lio/realm/RealmConfiguration;

.field final synthetic val$realmDeleted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    iput-object p2, p0, Lio/realm/BaseRealm$4;->val$realmDeleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRealmDirectory()Ljava/io/File;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getRealmFileName()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/realm/BaseRealm$4;->val$realmDeleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1, v0, v1}, Lio/realm/internal/Util;->deleteRealm(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/BaseRealm$4;->val$configuration:Lio/realm/RealmConfiguration;

    .line 6
    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
