.class Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "ab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->initializeNativeAdmob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    .line 78
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 1
    .param p1, "i"    # I

    .line 81
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 82
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab$3;->this$0:Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/c/z/ab;->dismiss()V

    .line 83
    return-void
.end method
