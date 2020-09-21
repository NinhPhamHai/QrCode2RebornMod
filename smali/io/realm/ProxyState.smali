.class public final Lio/realm/ProxyState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/PendingRow$FrontEnd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/ProxyState$QueryCallback;,
        Lio/realm/ProxyState$RealmChangeListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/internal/PendingRow$FrontEnd;"
    }
.end annotation


# static fields
.field private static queryCallback:Lio/realm/ProxyState$QueryCallback;


# instance fields
.field private acceptDefaultValue:Z

.field private excludeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/OsObject$ObjectObserverPair;",
            ">;"
        }
    .end annotation
.end field

.field private osObject:Lio/realm/internal/OsObject;

.field private realm:Lio/realm/BaseRealm;

.field private row:Lio/realm/internal/Row;

.field private underConstruction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/realm/ProxyState$QueryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/ProxyState$QueryCallback;-><init>(Lio/realm/ProxyState$1;)V

    sput-object v0, Lio/realm/ProxyState;->queryCallback:Lio/realm/ProxyState$QueryCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 3
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 6
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 7
    iput-object p1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    return-void
.end method

.method private notifyQueryFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    sget-object v1, Lio/realm/ProxyState;->queryCallback:Lio/realm/ProxyState$QueryCallback;

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method

.method private registerToObjectNotifier()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObject;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/UncheckedRow;)V

    iput-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    .line 4
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->setObserverPairs(Lio/realm/internal/ObserverPairList;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v1, v0, Lio/realm/internal/PendingRow;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/OsObject$ObjectObserverPair;

    iget-object v2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-direct {v1, v2, p1}, Lio/realm/internal/OsObject$ObjectObserverPair;-><init>(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lio/realm/ProxyState;->registerToObjectNotifier()V

    .line 5
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/OsObject;->addListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAcceptDefaultValue$realm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    return v0
.end method

.method public getExcludeFields$realm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-object v0
.end method

.method public getRealm$realm()Lio/realm/BaseRealm;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow$realm()Lio/realm/internal/Row;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/PendingRow;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnderConstruction()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    return v0
.end method

.method public load()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v1, v0, Lio/realm/internal/PendingRow;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/realm/internal/PendingRow;

    invoke-virtual {v0}, Lio/realm/internal/PendingRow;->executeQuery()V

    :cond_0
    return-void
.end method

.method public onQueryFinished(Lio/realm/internal/Row;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    .line 2
    invoke-direct {p0}, Lio/realm/ProxyState;->notifyQueryFinished()V

    .line 3
    invoke-interface {p1}, Lio/realm/internal/Row;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lio/realm/ProxyState;->registerToObjectNotifier()V

    :cond_0
    return-void
.end method

.method public removeAllChangeListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/RealmModel;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    :goto_0
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAcceptDefaultValue$realm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    return-void
.end method

.method public setConstructionFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-void
.end method

.method public setExcludeFields$realm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-void
.end method

.method public setRealm$realm(Lio/realm/BaseRealm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-void
.end method

.method public setRow$realm(Lio/realm/internal/Row;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-void
.end method
