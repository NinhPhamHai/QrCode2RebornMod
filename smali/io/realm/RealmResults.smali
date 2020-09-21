.class public Lio/realm/RealmResults;
.super Lio/realm/OrderedRealmCollectionImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/OrderedRealmCollectionImpl<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/Collection;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/realm/OrderedRealmCollectionImpl;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/realm/OrderedRealmCollectionImpl;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/String;)V

    return-void
.end method

.method private checkForAddRemoveListener(Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    iget-object p1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object p1, p1, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string p2, "Listeners cannot be used on current thread."

    invoke-interface {p1, p2}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    return-void
.end method

.method static createBacklinkResults(Lio/realm/BaseRealm;Lio/realm/internal/Row;Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/Row;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TT;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lio/realm/internal/UncheckedRow;

    .line 2
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 3
    new-instance v1, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 4
    invoke-static {v2, p1, v0, p3}, Lio/realm/internal/Collection;->createBacklinksCollection(Lio/realm/internal/SharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/Collection;

    move-result-object p1

    invoke-direct {v1, p0, p1, p2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/Class;)V

    return-object v1
.end method

.method static createDynamicBacklinkResults(Lio/realm/DynamicRealm;Lio/realm/internal/CheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/internal/CheckedRow;",
            "Lio/realm/internal/Table;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 3
    invoke-static {v2, p1, p2, p3}, Lio/realm/internal/Collection;->createBacklinksCollection(Lio/realm/internal/SharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/Collection;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic add(ILio/realm/RealmModel;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->add(ILio/realm/RealmModel;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic add(Lio/realm/RealmModel;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->add(Lio/realm/RealmModel;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->addAll(ILjava/util/Collection;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 4
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public asObservable()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    instance-of v1, v0, Lio/realm/Realm;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmResults;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lio/realm/DynamicRealm;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Lio/realm/DynamicRealm;

    .line 5
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not support RxJava."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic average(Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->clear()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteAllFromRealm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->deleteAllFromRealm()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic deleteFirstFromRealm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->deleteFirstFromRealm()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic deleteFromRealm(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->deleteFromRealm(I)V

    return-void
.end method

.method public bridge synthetic deleteLastFromRealm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->deleteLastFromRealm()Z

    move-result v0

    return v0
.end method

.method public distinct(Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/realm/SchemaConnector;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/SchemaConnector;-><init>(Lio/realm/RealmSchema;)V

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v1}, Lio/realm/internal/Collection;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/realm/internal/SortDescriptor;->getInstanceForDistinct(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/SortDescriptor;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p1}, Lio/realm/internal/Collection;->distinct(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/Collection;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->createLoadedResults(Lio/realm/internal/Collection;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public varargs distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Lio/realm/RealmResults;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/RealmQuery;->distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public distinctAsync(Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmResults;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->distinctAsync(Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic first()Lio/realm/RealmModel;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->first()Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic first(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->first(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Lio/realm/RealmModel;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->get(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isManaged()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->isManaged()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isValid()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->isValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Lio/realm/RealmModel;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->last()Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->last(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public load()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->load()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic max(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->maxDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic min(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->minDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Lio/realm/RealmModel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->remove(I)Lio/realm/RealmModel;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public removeAllChangeListeners()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->removeAllListeners()V

    return-void
.end method

.method public removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 4
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public removeChangeListeners()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmResults;->removeAllChangeListeners()V

    return-void
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->retainAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic set(ILio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->set(ILio/realm/RealmModel;)Lio/realm/RealmModel;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic sort(Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->sort(Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    new-array p3, v0, [Lio/realm/Sort;

    aput-object p2, p3, v2

    aput-object p4, p3, p1

    invoke-virtual {p0, v1, p3}, Lio/realm/RealmResults;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sum(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public where()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-static {p0}, Lio/realm/RealmQuery;->createQueryFromResult(Lio/realm/RealmResults;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method
