.class public Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;
.super Landroid/app/Activity;
.source "q.java"


# instance fields
.field private firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public checkVip()V
    .locals 8

    .line 84
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "vip":I
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const v2, 0x4008000

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_2

    .line 86
    const-string v4, "show_sub"

    invoke-virtual {v1, v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->openMain()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->openMain()V

    goto :goto_0

    .line 99
    :cond_2
    if-nez v0, :cond_3

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/barcodescanner/codegeneratorx88/reader/c/w/r;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->startActivity(Landroid/content/Intent;)V

    .line 104
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->openMain()V

    .line 108
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 31
    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->setContentView(I)V

    .line 32
    const v0, 0x7f0803a4

    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .local v0, "tvPolicy":Landroid/widget/ImageView;
    const v1, 0x7f0803a1

    invoke-virtual {p0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 34
    .local v1, "tvAgree":Landroid/widget/ImageView;
    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$1;

    invoke-direct {v2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$1;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->initSharePreferencesHelper(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;->getInstance(Landroid/content/Context;)Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/c/w/e;->initializeInapp()V

    .line 42
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->getInstance()Lcom/barcodescanner/codegeneratorx88/reader/c/y;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "isFirst"

    invoke-virtual {v2, v4, v4, v3}, Lcom/barcodescanner/codegeneratorx88/reader/c/y;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, "show":I
    if-nez v2, :cond_0

    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    new-instance v3, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$2;

    invoke-direct {v3, p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$2;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 53
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 58
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$3;

    invoke-direct {v4, p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q$3;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .end local v3    # "handler":Landroid/os/Handler;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 67
    new-instance v3, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    const-wide/16 v4, 0xe10

    .line 68
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v3

    .line 70
    .local v3, "settings":Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    iget-object v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v4, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 71
    iget-object v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const v5, 0x7f110004

    invoke-virtual {v4, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;

    .line 72
    iget-object v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    .line 73
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v4

    iput-object v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v3    # "settings":Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    goto :goto_1

    .line 74
    :catch_0
    move-exception v3

    .line 77
    :goto_1
    return-void
.end method

.method public openMain()V
    .locals 2

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    const v1, 0x4008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/q/q;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public openPolicy()V
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/c/v;->openPolicy(Landroid/content/Context;)V

    .line 81
    return-void
.end method
