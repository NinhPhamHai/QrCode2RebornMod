.class final Lcom/google/android/gms/internal/ads/zzddj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzctz<",
        "Lcom/google/android/gms/internal/ads/zzblr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgqt:Lcom/google/android/gms/internal/ads/zzddf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblr;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzddf;->zzgqn:Lcom/google/android/gms/internal/ads/zzblr;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzddf;->zzgqn:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbns;->destroy()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzddf;->zzgqn:Lcom/google/android/gms/internal/ads/zzblr;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zza(Lcom/google/android/gms/internal/ads/zzddf;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zza(Lcom/google/android/gms/internal/ads/zzddf;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblr;->zzahe()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzaxf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaxf;->zzxl()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblr;->zzagw()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zzb(Lcom/google/android/gms/internal/ads/zzddf;)Lcom/google/android/gms/internal/ads/zzazz;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazz;->zzdzo:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzz;->zzcrb:Lcom/google/android/gms/internal/ads/zzzk;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvj;->zzpv()Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzzv;->zzd(Lcom/google/android/gms/internal/ads/zzzk;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzddf;->zza(Lcom/google/android/gms/internal/ads/zzddf;Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-result-object v0

    .line 15
    nop

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddf;->zzd(Lcom/google/android/gms/internal/ads/zzblr;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblr;->zzahf()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblr;->zzagx()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzal(Z)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzddf;->zza(Lcom/google/android/gms/internal/ads/zzddf;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzddf;->zzb(Lcom/google/android/gms/internal/ads/zzddf;Lcom/google/android/gms/internal/ads/zzblr;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zza(Lcom/google/android/gms/internal/ads/zzddf;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzddf;->zzc(Lcom/google/android/gms/internal/ads/zzddf;)Lcom/google/android/gms/internal/ads/zzum;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzum;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zza(Lcom/google/android/gms/internal/ads/zzddf;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzddf;->zzc(Lcom/google/android/gms/internal/ads/zzddf;)Lcom/google/android/gms/internal/ads/zzum;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzum;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zzd(Lcom/google/android/gms/internal/ads/zzddf;)Lcom/google/android/gms/internal/ads/zzddn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzblt;-><init>(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzvz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddn;->zzb(Lcom/google/android/gms/internal/ads/zzrm;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbns;->zzahk()V

    .line 24
    return-void
.end method

.method public final zzapn()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddj;->zzgqt:Lcom/google/android/gms/internal/ads/zzddf;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzddf;->zzgqn:Lcom/google/android/gms/internal/ads/zzblr;

    .line 3
    return-void
.end method
