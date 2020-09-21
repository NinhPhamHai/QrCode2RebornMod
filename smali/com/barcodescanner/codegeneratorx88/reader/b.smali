.class public Lcom/barcodescanner/codegeneratorx88/reader/b;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static a:Lcom/barcodescanner/codegeneratorx88/reader/b; = null

.field private static final b:Ljava/lang/String; = "BaseApplication"


# instance fields
.field private c:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/barcodescanner/codegeneratorx88/reader/b;
    .locals 2

    const-class v0, Lcom/barcodescanner/codegeneratorx88/reader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/b;

    invoke-direct {v1}, Lcom/barcodescanner/codegeneratorx88/reader/b;-><init>()V

    sput-object v1, Lcom/barcodescanner/codegeneratorx88/reader/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/b;

    .line 3
    :cond_0
    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/barcodescanner/codegeneratorx88/reader/b;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b;->b()Lcom/android/volley/RequestQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, La/b/e/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b;->c:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b;->c:Lcom/android/volley/RequestQueue;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b;->c:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/barcodescanner/codegeneratorx88/reader/b;->a:Lcom/barcodescanner/codegeneratorx88/reader/b;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method
