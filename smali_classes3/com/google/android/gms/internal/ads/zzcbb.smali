.class public final Lcom/google/android/gms/internal/ads/zzcbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcaf;

.field private final zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

.field private final zzfud:Lcom/google/android/gms/internal/ads/zzcey;

.field private final zzfue:Lcom/google/android/gms/internal/ads/zzbky;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcey;Lcom/google/android/gms/internal/ads/zzcdt;Lcom/google/android/gms/internal/ads/zzbky;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfud:Lcom/google/android/gms/internal/ads/zzcey;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfue:Lcom/google/android/gms/internal/ads/zzbky;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfra:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 6
    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbek;Ljava/util/Map;)V
    .locals 0

    .line 17
    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawr;->zzfb(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbek;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfue:Lcom/google/android/gms/internal/ads/zzbky;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbky;->zzbf(Z)V

    .line 20
    return-void
.end method

.method final synthetic zza(Ljava/util/Map;Z)V
    .locals 2

    .line 25
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcdt;->zza(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    return-void
.end method

.method public final zzamh()Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbew;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfud:Lcom/google/android/gms/internal/ads/zzcey;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzum;->zzph()Lcom/google/android/gms/internal/ads/zzum;

    move-result-object v1

    .line 8
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcey;->zza(Lcom/google/android/gms/internal/ads/zzum;Z)Lcom/google/android/gms/internal/ads/zzbek;

    move-result-object v0

    .line 9
    nop

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbek;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcba;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcba;-><init>(Lcom/google/android/gms/internal/ads/zzcbb;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaga;)V

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Lcom/google/android/gms/internal/ads/zzcbb;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaga;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcbc;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcbc;-><init>(Lcom/google/android/gms/internal/ads/zzcbb;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcdt;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaga;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcbf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcbf;-><init>(Lcom/google/android/gms/internal/ads/zzcbb;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcdt;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaga;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcbe;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Lcom/google/android/gms/internal/ads/zzcbb;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcdt;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaga;)V

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbek;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbek;Ljava/util/Map;)V
    .locals 0

    .line 21
    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawr;->zzfb(Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbek;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfue:Lcom/google/android/gms/internal/ads/zzbky;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbky;->zzbf(Z)V

    .line 24
    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbek;Ljava/util/Map;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzfra:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzakm()V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbek;Ljava/util/Map;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzftu:Lcom/google/android/gms/internal/ads/zzcdt;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcdt;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
