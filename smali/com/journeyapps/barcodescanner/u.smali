.class public Lcom/journeyapps/barcodescanner/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/u;->a:Lcom/journeyapps/barcodescanner/s;

    return-void
.end method

.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/u;->a:Lcom/journeyapps/barcodescanner/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/s;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_0
    return-void
.end method
