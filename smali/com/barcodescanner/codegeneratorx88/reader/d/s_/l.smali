.class public Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/barcodescanner/codegeneratorx88/reader/d/a/e<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmSet$id(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    .line 27
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;

    invoke-interface {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "qrCodeEntity NULL"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_0
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/b;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAW_DATA:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Lcom/journeyapps/barcodescanner/b;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->b:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "key_sound_enable"

    invoke-static {v1, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->b:Landroid/content/Context;

    const-string v2, "key_vibrate_enable"

    invoke-static {v2, v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    .line 6
    new-instance v1, Lcom/google/zxing/client/android/BeepManager;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/zxing/client/android/BeepManager;->setBeepEnabled(Z)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/BeepManager;->setVibrateEnabled(Z)V

    .line 9
    invoke-virtual {v1}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a()V

    if-eqz p1, :cond_0

    .line 17
    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    invoke-direct {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;

    invoke-interface {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;

    invoke-interface {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->b:Landroid/content/Context;

    const v1, 0x7f0e00f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/b;

    invoke-direct {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/c;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;)V

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/a;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
