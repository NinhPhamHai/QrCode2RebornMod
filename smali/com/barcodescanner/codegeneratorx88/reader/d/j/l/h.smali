.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
.implements Lf/devrel/easypermissions/d$a;


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field etLatitude:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080081
    .end annotation
.end field

.field etLongitude:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080083
    .end annotation
.end field

.field etQueryLocation:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080087
    .end annotation
.end field

.field private h:Lcom/google/android/gms/maps/GoogleMap;

.field private i:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

.field ivSaveQREncode:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field private j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

.field private k:Landroid/content/Context;

.field private l:Landroid/location/Location;

.field private m:Landroid/content/BroadcastReceiver;

.field mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800ee
    .end annotation
.end field

.field scrollView:Landroid/support/v4/widget/NestedScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08013d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;-><init>()V

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/a;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->l:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->l:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e008d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0098

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/c;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V

    const v2, 0x7f0e00c3

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/d;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V

    const v2, 0x7f0e0074

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLongitude:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 17
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 18
    new-instance p1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const p2, 0x7f0700c8

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {v0, p3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 22
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0, p3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 23
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {v0, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c248061

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x4212f825

    if-eq v0, v1, :cond_1

    const v1, 0x32e029c2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "LONGITUDE_LOCATON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "QUERY_LOCATON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "LATITUDE_LOCATON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e004e

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e004d

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->l()V

    return-void
.end method

.method backLocationCreate()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801a3
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    instance-of v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/g/e;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_1
    :goto_0
    return-void
.end method

.method createQREncodeLocation()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLongitude:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {v3, v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrLocation()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLongitude:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 4
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$query()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "q="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLongitude:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etQueryLocation:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->etLatitude:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/b;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->a(DD)V

    :cond_1
    return-void
.end method

.method public locationTask()V
    .locals 3
    .annotation runtime Lf/devrel/easypermissions/a;
        value = 0x73
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->l()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7c

    .line 3
    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->g:[Ljava/lang/String;

    const-string v2, "TODO: Location things"

    invoke-static {p0, v2, v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0a007b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "DETECT_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->locationTask()V

    .line 8
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->n()V

    .line 9
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->i:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a()V

    .line 3
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->a(DD)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V

    .line 5
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object p1

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->k:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->h:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->mapViewLocation:Lcom/barcodescanner/codegeneratorx88/reader/d/c/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$latitude()D

    move-result-wide v0

    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->j:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/f;->realmGet$longitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->a(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMyLocationButtonClick()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->l:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->l:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->a(DD)V

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lf/devrel/easypermissions/d;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method
