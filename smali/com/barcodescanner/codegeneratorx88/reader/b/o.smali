.class public Lcom/barcodescanner/codegeneratorx88/reader/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/barcodescanner/codegeneratorx88/reader/b/o$a;
    }
.end annotation


# static fields
.field private static a:Landroid/app/ProgressDialog;


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    const-string v0, "layout_inflater"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0

    .line 106
    new-instance p0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdView;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    sget-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->c:Z

    if-eqz v0, :cond_1

    const p1, 0x7f0e002e

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 111
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 113
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_2
    const/16 p1, 0x8

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 115
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;
    .locals 1

    .line 6
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;-><init>()V

    .line 7
    iput-object p2, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    .line 8
    iput-object p1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    .line 9
    iput-object p0, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->d:J

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/b/o$a;

    invoke-direct {v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 83
    invoke-static {p2}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p0

    .line 84
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractInstant;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 89
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 90
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "dd/MM/yyyy"

    invoke-static {p0, p1}, Lcom/utility/UtilsLib;->getDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/realm/RealmResults;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 21
    invoke-virtual {p0, v1}, Lio/realm/RealmResults;->get(I)Lio/realm/RealmModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a()V
    .locals 1

    .line 11
    :try_start_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;II)V
    .locals 3

    .line 68
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-int p0, p0, p3

    div-int/lit8 p0, p0, 0x64

    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    if-eq p2, v1, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    mul-int v0, v0, p2

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;DD)V
    .locals 6
	
.line 33
    const-string v0, "logd_hihi1"

    const-string v1, "logd_hihi:1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.VIEW"

    .line 22
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:%f,%f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    invoke-static {v1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.google.com/maps/@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->d()Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/a/a;->a()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;)V
    .locals 3

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$first_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$last_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.dir/contact"

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phonetic_name"

    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "name"

    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "phone"

    .line 50
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$phone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "email"

    .line 51
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$email()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "company"

    .line 52
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "job_title"

    .line 53
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/b;->realmGet$job()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "QR_ENCODE"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;)V
    .locals 4

    .line 56
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$start()J

    move-result-wide v2

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$end()J

    move-result-wide v2

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "allDay"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$startAllDay()Z

    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventLocation"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "organizer"

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$organizer()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "availability"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;)V
    .locals 6

    const-string v0, "\"%s\""

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->d(Landroid/content/Context;)V

    .line 31
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x1

    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$ssid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 33
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/l;->realmGet$password()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string p1, "wifi"

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 35
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 37
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 38
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 41
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "\\-"

    .line 95
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    :try_start_1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 102
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const-string p1, "Phone number is empty"

    .line 103
    invoke-static {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x40

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v0, "text/plain"

    .line 77
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 78
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 79
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V
    .locals 1

    .line 116
    :try_start_0
    sget-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->b:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 123
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[a-zA-Z]+"

    .line 86
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xd

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 18
    sget-boolean v1, Lcom/barcodescanner/codegeneratorx88/reader/a;->c:Z

    if-eqz v1, :cond_0

    const-string p1, "ca-app-pub-inter-test"

    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 21
    :cond_1
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x24

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "HH:mm:ss dd-MM-yyyy"

    invoke-static {p0, p1}, Lcom/utility/UtilsLib;->getDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
	
	.param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 69
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/v;->openSub(Landroid/content/Context;)V

    .line 70
    return-void

    .line 72
    :cond_12
    const-string v0, "hihi"

    const-string v1, "onClick: hehe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "hihi1"

    const-string v1, "onClick: hehe2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "OPA_SHOW_TIME"

    .line 22
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v2, 0x0

    .line 23
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x2bf20

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Lb/a/a/l;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lb/a/a/l$a;

    invoke-direct {v0, p0}, Lb/a/a/l$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lb/a/a/l$a;->a(Z)Lb/a/a/l$a;

    const v1, 0x7f0e00a2

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/a/a/l$a;->d(Ljava/lang/CharSequence;)Lb/a/a/l$a;

    .line 4
    invoke-virtual {v0}, Lb/a/a/l$a;->a()Lb/a/a/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdView;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    sget-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->c:Z

    if-eqz v0, :cond_1

    const p1, 0x7f0e002e

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_2
    const/16 p1, 0x8

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const p1, 0x7f0e00cd

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    const-wide/32 p1, 0xa4cb800

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const p1, 0x7f0e00d9

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p1, 0x7f0e00a9

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
	
	.param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 69
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/v;->openSub(Landroid/content/Context;)V

    .line 70
    return-void

    .line 72
    :cond_12
    const-string v0, "hihi"

    const-string v1, "onClick: hehe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "hihi1"

    const-string v1, "onClick: hehe2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.google.com.vn/search?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "HH:mm:ss"

    invoke-static {p0, p1}, Lcom/utility/UtilsLib;->getDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 8
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a()V

    .line 2
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    .line 3
    sget-object p0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4
    sget-object p0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5
    sget-object p0, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 6
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "OPA_SHOW_TIME"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 9
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    const/16 v1, 0xe6

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 2
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "wifi"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method
