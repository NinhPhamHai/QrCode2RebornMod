.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected c:Landroid/location/Location;

.field d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/g;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->d()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DETECT_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->c:Landroid/location/Location;

    const-string v2, "LOCATION_DATA_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 8
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 9
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const/16 v0, 0x64

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x2710

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x3e8

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    .line 7
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    :cond_0
    const-string p1, "Location permission not granted"

    .line 8
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->d()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iput-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a()V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->d:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->d()V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->c:Landroid/location/Location;

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->e()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->c()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
