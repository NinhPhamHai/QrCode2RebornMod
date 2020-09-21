.class public Lio/realm/internal/Collection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/Collection$Mode;,
        Lio/realm/internal/Collection$Aggregate;,
        Lio/realm/internal/Collection$ListIterator;,
        Lio/realm/internal/Collection$Iterator;,
        Lio/realm/internal/Collection$Callback;,
        Lio/realm/internal/Collection$RealmChangeListenerWrapper;,
        Lio/realm/internal/Collection$CollectionObserverPair;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static final AGGREGATE_FUNCTION_AVERAGE:B = 0x3t

.field public static final AGGREGATE_FUNCTION_MAXIMUM:B = 0x2t

.field public static final AGGREGATE_FUNCTION_MINIMUM:B = 0x1t

.field public static final AGGREGATE_FUNCTION_SUM:B = 0x4t

.field private static final CLOSED_REALM_MESSAGE:Ljava/lang/String; = "This Realm instance has already been closed, making it unusable."

.field public static final MODE_EMPTY:B = 0x0t

.field public static final MODE_LINKVIEW:B = 0x3t

.field public static final MODE_QUERY:B = 0x2t

.field public static final MODE_TABLE:B = 0x1t

.field public static final MODE_TABLEVIEW:B = 0x4t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private isSnapshot:Z

.field private loaded:Z

.field private final nativePtr:J

.field private final observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/Collection$CollectionObserverPair;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedRealm:Lio/realm/internal/SharedRealm;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/Collection;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Collection;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/OsList;Lio/realm/internal/SortDescriptor;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    .line 15
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 16
    invoke-virtual {p1}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/internal/OsList;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Lio/realm/internal/Collection;->nativeCreateResultsFromList(JJLio/realm/internal/SortDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    .line 17
    iput-object p1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 18
    iget-object p1, p1, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    .line 19
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getTargetTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    .line 20
    iget-object p1, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lio/realm/internal/Collection;->loaded:Z

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 22
    invoke-direct/range {v0 .. v5}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;JZ)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;JZ)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    .line 25
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 26
    iput-object p1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 27
    iget-object p1, p1, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    .line 28
    iput-object p2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    .line 29
    iput-wide p3, p0, Lio/realm/internal/Collection;->nativePtr:J

    .line 30
    iget-object p1, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 31
    iput-boolean p5, p0, Lio/realm/internal/Collection;->loaded:Z

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v0}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    .line 3
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 4
    invoke-virtual {p2}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 5
    invoke-virtual {p1}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v4

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Collection;->nativeCreateResults(JJLio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)J

    move-result-wide p3

    iput-wide p3, p0, Lio/realm/internal/Collection;->nativePtr:J

    .line 6
    iput-object p1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 7
    iget-object p1, p1, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    .line 8
    invoke-virtual {p2}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    .line 9
    iget-object p1, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 10
    iput-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/Collection;)Lio/realm/internal/SharedRealm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    return-object p0
.end method

.method static synthetic access$100(Lio/realm/internal/Collection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    return p0
.end method

.method public static createBacklinksCollection(Lio/realm/internal/SharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/Collection;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    .line 4
    invoke-virtual/range {p2 .. p3}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    .line 5
    invoke-static/range {v0 .. v7}, Lio/realm/internal/Collection;->nativeCreateResultsFromBacklinks(JJJJ)J

    move-result-wide v11

    .line 6
    new-instance v0, Lio/realm/internal/Collection;

    const/4 v13, 0x1

    move-object v8, v0

    move-object v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;JZ)V

    return-object v0
.end method

.method private static native nativeAggregate(JJB)Ljava/lang/Object;
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeContains(JJ)Z
.end method

.method private static native nativeCreateResults(JJLio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)J
.end method

.method private static native nativeCreateResultsFromBacklinks(JJJJ)J
.end method

.method private static native nativeCreateResultsFromList(JJLio/realm/internal/SortDescriptor;)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeDelete(JJ)V
.end method

.method private static native nativeDeleteFirst(J)Z
.end method

.method private static native nativeDeleteLast(J)Z
.end method

.method private static native nativeDistinct(JLio/realm/internal/SortDescriptor;)J
.end method

.method private static native nativeFirstRow(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeIndexOf(JJ)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLastRow(J)J
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeSort(JLio/realm/internal/SortDescriptor;)J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private static native nativeWhere(J)J
.end method

.method private notifyChangeListeners(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Collection;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, p0, Lio/realm/internal/Collection;->loaded:Z

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, p0, Lio/realm/internal/Collection;->loaded:Z

    .line 4
    iget-object v3, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v4, Lio/realm/internal/Collection$Callback;

    cmp-long v5, p1, v0

    if-eqz v5, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lio/realm/internal/OsCollectionChangeSet;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v4, v0}, Lio/realm/internal/Collection$Callback;-><init>(Lio/realm/OrderedCollectionChangeSet;)V

    .line 6
    invoke-virtual {v3, v4}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->nativeStartListening(J)V

    .line 3
    :cond_0
    new-instance v0, Lio/realm/internal/Collection$CollectionObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/Collection$CollectionObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method public addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lio/realm/internal/Collection$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/Collection$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/Collection;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public aggregateDate(Lio/realm/internal/Collection$Aggregate;J)Ljava/util/Date;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/Collection$Aggregate;->getValue()B

    move-result p1

    invoke-static {v0, v1, p2, p3, p1}, Lio/realm/internal/Collection;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public aggregateNumber(Lio/realm/internal/Collection$Aggregate;J)Ljava/lang/Number;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/Collection$Aggregate;->getValue()B

    move-result p1

    invoke-static {v0, v1, p2, p3, p1}, Lio/realm/internal/Collection;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeClear(J)V

    return-void
.end method

.method public contains(Lio/realm/internal/UncheckedRow;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Collection;->nativeContains(JJ)Z

    move-result p1

    return p1
.end method

.method public createSnapshot()Lio/realm/internal/Collection;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/Collection;->nativeCreateSnapshot(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lio/realm/internal/Collection;->isSnapshot:Z

    return-object v0
.end method

.method public delete(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Collection;->nativeDelete(JJ)V

    return-void
.end method

.method public deleteFirst()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeDeleteFirst(J)Z

    move-result v0

    return v0
.end method

.method public deleteLast()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeDeleteLast(J)Z

    move-result v0

    return v0
.end method

.method public distinct(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/Collection;
    .locals 5

    .line 1
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v3, v4, p1}, Lio/realm/internal/Collection;->nativeDistinct(JLio/realm/internal/SortDescriptor;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public firstUncheckedRow()Lio/realm/internal/UncheckedRow;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeFirstRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()Lio/realm/internal/Collection$Mode;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeGetMode(J)B

    move-result v0

    invoke-static {v0}, Lio/realm/internal/Collection$Mode;->getByValue(B)Lio/realm/internal/Collection$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/Collection;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getUncheckedRow(I)Lio/realm/internal/UncheckedRow;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/Collection;->nativeGetRow(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Lio/realm/internal/UncheckedRow;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Collection;->nativeIndexOf(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    :goto_0
    return p1
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public lastUncheckedRow()Lio/realm/internal/UncheckedRow;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeLastRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public load()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->notifyChangeListeners(J)V

    return-void
.end method

.method public removeAllListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->nativeStopListening(J)V

    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide p1, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Collection;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Lio/realm/internal/Collection$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/Collection$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sort(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/Collection;
    .locals 5

    .line 1
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v3, v4, p1}, Lio/realm/internal/Collection;->nativeSort(JLio/realm/internal/SortDescriptor;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public where()Lio/realm/internal/TableQuery;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeWhere(J)J

    move-result-wide v0

    .line 2
    new-instance v2, Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/NativeContext;

    iget-object v4, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v2
.end method
