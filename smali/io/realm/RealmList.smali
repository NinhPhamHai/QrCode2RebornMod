.class public Lio/realm/RealmList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmList$RealmListItr;,
        Lio/realm/RealmList$RealmItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lio/realm/OrderedRealmCollection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final NULL_OBJECTS_NOT_ALLOWED_MESSAGE:Ljava/lang/String; = "RealmList does not accept null values"

.field private static final ONLY_IN_MANAGED_MODE_MESSAGE:Ljava/lang/String; = "This method is only available in managed mode"

.field public static final REMOVE_OUTSIDE_TRANSACTION_ERROR:Ljava/lang/String; = "Objects can only be removed from inside a write transaction"


# instance fields
.field protected className:Ljava/lang/String;

.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final collection:Lio/realm/internal/Collection;

.field final osList:Lio/realm/internal/OsList;

.field protected final realm:Lio/realm/BaseRealm;

.field private unmanagedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    .line 3
    iput-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    .line 4
    iput-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsList;",
            "Lio/realm/BaseRealm;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 14
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/OsList;Lio/realm/internal/SortDescriptor;)V

    iput-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    .line 15
    iput-object p1, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    .line 16
    iput-object p2, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    .line 17
    iput-object p3, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 19
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/OsList;Lio/realm/internal/SortDescriptor;)V

    iput-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    .line 20
    iput-object p2, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    .line 21
    iput-object p3, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 22
    iput-object p1, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    .line 8
    iput-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    .line 9
    iput-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The objects argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lio/realm/RealmList;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic access$200(Lio/realm/RealmList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    return-void
.end method

.method static synthetic access$300(Lio/realm/RealmList;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic access$400(Lio/realm/RealmList;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic access$500(Lio/realm/RealmList;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method static synthetic access$600(Lio/realm/RealmList;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
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
    iget-object p1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    iget-object p1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object p1, p1, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string p2, "Listeners cannot be used on current thread."

    invoke-interface {p1, p2}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    return-void
.end method

.method private checkIndex(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkValidObject(Lio/realm/RealmModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RealmList does not accept null values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkValidRealm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    return-void
.end method

.method private copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 3
    instance-of v1, v0, Lio/realm/DynamicRealmObject;

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-ne v2, v3, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Lio/realm/DynamicRealmObject;

    invoke-virtual {v0}, Lio/realm/DynamicRealmObject;->getType()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "The object has a different type from list\'s. Type of the list is \'%s\', type of object is \'%s\'."

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    iget-wide v1, v3, Lio/realm/BaseRealm;->threadId:J

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    iget-wide v3, p1, Lio/realm/BaseRealm;->threadId:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot copy DynamicRealmObject between Realm instances."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy an object to a Realm instance created in another thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-ne v1, v0, :cond_4

    return-object p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot copy an object from another Realm instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/Realm;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method private firstImpl(ZLio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p2

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "The list is empty."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isAttached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lastImpl(ZLio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-virtual {p1}, Lio/realm/internal/OsList;->size()J

    move-result-wide p1

    long-to-int p2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p2

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "The list is empty."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(ILio/realm/RealmModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Lio/realm/RealmList;->checkValidObject(Lio/realm/RealmModel;)V

    .line 4
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    if-ltz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 7
    invoke-direct {p0, p2}, Lio/realm/RealmList;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    .line 8
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-interface {p2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->insertRow(JJ)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_1
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->add(ILio/realm/RealmModel;)V

    return-void
.end method

.method public add(Lio/realm/RealmModel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lio/realm/RealmList;->checkValidObject(Lio/realm/RealmModel;)V

    .line 13
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 15
    invoke-direct {p0, p1}, Lio/realm/RealmList;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    .line 16
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->addRow(J)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    move-result p1

    return p1
.end method

.method public addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 4
    iget-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public asObservable()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    instance-of v1, v0, Lio/realm/Realm;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmList;)Lrx/Observable;

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

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

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

.method public average(Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :goto_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 5
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-ne v0, v2, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/OrderedRealmCollectionSnapshot<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lio/realm/OrderedRealmCollectionSnapshot;

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    new-instance v3, Lio/realm/internal/Collection;

    iget-object v4, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v5, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-direct {v3, v4, v5, v1}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/OsList;Lio/realm/internal/SortDescriptor;)V

    iget-object v1, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lio/realm/OrderedRealmCollectionSnapshot;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lio/realm/OrderedRealmCollectionSnapshot;

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    new-instance v3, Lio/realm/internal/Collection;

    iget-object v4, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v5, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-direct {v3, v4, v5, v1}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/OsList;Lio/realm/internal/SortDescriptor;)V

    iget-object v1, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v2, v3, v1}, Lio/realm/OrderedRealmCollectionSnapshot;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/Class;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteAllFromRealm()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->deleteAll()V

    .line 5
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFirstFromRealm()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    .line 4
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return v1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFromRealm(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->delete(J)V

    .line 4
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteLastFromRealm()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/realm/RealmList;->deleteFromRealm(I)V

    .line 4
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public first()Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/realm/RealmList;->firstImpl(ZLio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public first(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lio/realm/RealmList;->firstImpl(ZLio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lio/realm/RealmModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 4
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lio/realm/internal/OsList;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/realm/RealmList;->isAttached()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/realm/RealmList$RealmItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/realm/RealmList;->lastImpl(ZLio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public last(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lio/realm/RealmList;->lastImpl(ZLio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/realm/RealmList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/realm/RealmList$RealmListItr;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmList$RealmListItr;-><init>(Lio/realm/RealmList;I)V

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public load()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->maximumDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->minimumDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public move(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    int-to-long p1, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->move(JJ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/RealmList;->checkIndex(I)V

    .line 5
    invoke-direct {p0, p2}, Lio/realm/RealmList;->checkIndex(I)V

    .line 6
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    if-le p2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public remove(I)Lio/realm/RealmModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 4
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->remove(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    .line 7
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->remove(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAllChangeListeners()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->removeAllListeners()V

    return-void
.end method

.method public removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 4
    iget-object v0, p0, Lio/realm/RealmList;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public set(ILio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lio/realm/RealmList;->checkValidObject(Lio/realm/RealmModel;)V

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 5
    invoke-direct {p0, p2}, Lio/realm/RealmList;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    .line 6
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    int-to-long v2, p1

    invoke-interface {p2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide p1

    invoke-virtual {v1, v2, v3, p1, p2}, Lio/realm/internal/OsList;->setRow(JJ)V

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->set(ILio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmList;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/lang/String;)Lio/realm/RealmResults;
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

    .line 1
    sget-object v0, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmList;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/RealmQuery;->findAllSorted(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is only available in managed mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    new-array p3, v0, [Lio/realm/Sort;

    aput-object p2, p3, v2

    aput-object p4, p3, p1

    invoke-virtual {p0, v1, p3}, Lio/realm/RealmList;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/RealmQuery;->findAllSorted([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is only available in managed mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is only available in managed mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_1
    const-class v1, Lio/realm/RealmList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "@["

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lio/realm/RealmList;->isAttached()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "invalid"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 9
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    :goto_3
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    const/16 v2, 0x2c

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    const-string v1, "]"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where()Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 3
    invoke-static {p0}, Lio/realm/RealmQuery;->createQueryFromList(Lio/realm/RealmList;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
