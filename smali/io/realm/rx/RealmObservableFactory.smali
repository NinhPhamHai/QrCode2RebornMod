.class public Lio/realm/rx/RealmObservableFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/rx/RxObservableFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    }
.end annotation


# instance fields
.field listRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmList;",
            ">;>;"
        }
    .end annotation
.end field

.field objectRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field resultsRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmResults;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/rx/RealmObservableFactory$1;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$1;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Lio/realm/rx/RealmObservableFactory$2;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$2;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->listRefs:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Lio/realm/rx/RealmObservableFactory$3;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$3;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->objectRefs:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lio/realm/rx/RealmObservableFactory;

    return p1
.end method

.method public from(Lio/realm/DynamicRealm;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            ")",
            "Lrx/Observable<",
            "Lio/realm/DynamicRealm;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 4
    new-instance v0, Lio/realm/rx/RealmObservableFactory$5;

    invoke-direct {v0, p0, p1}, Lio/realm/rx/RealmObservableFactory$5;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lrx/Observable<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 16
    new-instance v0, Lio/realm/rx/RealmObservableFactory$11;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$11;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmList<",
            "Lio/realm/DynamicRealmObject;",
            ">;)",
            "Lrx/Observable<",
            "Lio/realm/RealmList<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 12
    new-instance v0, Lio/realm/rx/RealmObservableFactory$9;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$9;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmQuery;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmQuery<",
            "Lio/realm/DynamicRealmObject;",
            ">;)",
            "Lrx/Observable<",
            "Lio/realm/RealmQuery<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation

    .line 18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "RealmQuery not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;)",
            "Lrx/Observable<",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 8
    new-instance v0, Lio/realm/rx/RealmObservableFactory$7;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$7;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            ")",
            "Lrx/Observable<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 2
    new-instance v0, Lio/realm/rx/RealmObservableFactory$4;

    invoke-direct {v0, p0, p1}, Lio/realm/rx/RealmObservableFactory$4;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmList;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lrx/Observable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 10
    new-instance v0, Lio/realm/rx/RealmObservableFactory$8;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$8;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmModel;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lrx/Observable<",
            "TE;>;"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 14
    new-instance v0, Lio/realm/rx/RealmObservableFactory$10;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$10;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmQuery;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmQuery<",
            "TE;>;)",
            "Lrx/Observable<",
            "Lio/realm/RealmQuery<",
            "TE;>;>;"
        }
    .end annotation

    .line 17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "RealmQuery not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmResults;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lrx/Observable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 6
    new-instance v0, Lio/realm/rx/RealmObservableFactory$6;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$6;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
