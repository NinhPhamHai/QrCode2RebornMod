.class public Lcom/journeyapps/barcodescanner/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/zxing/Result;

.field protected b:Lcom/journeyapps/barcodescanner/E;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/journeyapps/barcodescanner/b;->c:I

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    .line 4
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/b;->b:Lcom/journeyapps/barcodescanner/E;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->b:Lcom/journeyapps/barcodescanner/E;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/E;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/zxing/Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/b;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
