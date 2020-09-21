.class public Lcom/barcodescanner/codegeneratorx88/reader/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/barcodescanner/codegeneratorx88/reader/a/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

.field private d:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

.field private e:Lio/realm/Realm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lio/realm/Realm;)Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;
    .locals 1

    .line 4
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-direct {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;-><init>(Landroid/content/Context;Lio/realm/Realm;)V

    return-object v0
.end method

.method private c(Landroid/content/Context;)Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;
    .locals 1

    .line 4
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

    invoke-direct {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    return-object v0
.end method

.method private f()Lio/realm/Realm;
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b:Landroid/content/Context;

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e:Lio/realm/Realm;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e:Lio/realm/Realm;

    .line 9
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->d:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    .line 10
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e:Lio/realm/Realm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->d:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->a()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->a()V

    .line 3
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-wide/16 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/c;

    invoke-direct {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/c;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c(Landroid/content/Context;)Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

    .line 11
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->f()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e:Lio/realm/Realm;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e:Lio/realm/Realm;

    invoke-direct {p0, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->a(Landroid/content/Context;Lio/realm/Realm;)Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->d:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    return-void
.end method

.method public d()Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c:Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

    return-object v0
.end method

.method public e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->d:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    return-object v0
.end method
