.class public Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->d:I

    const/16 v0, 0x190

    .line 4
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->g:I

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 21
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 22
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-virtual {v5, p1, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p1, 0x1f

    .line 24
    invoke-virtual {v5, p1}, Landroid/graphics/Canvas;->save(I)I

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v8, v2

    div-float/2addr v8, v7

    .line 25
    div-int/lit8 v9, v0, 0x5

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_1

    int-to-float v8, v3

    div-float/2addr v8, v7

    div-int/lit8 v9, v1, 0x5

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    div-float/2addr p1, v7

    .line 26
    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, p1, p1, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int/2addr v0, v2

    .line 27
    div-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    invoke-virtual {v5, p2, p1, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 28
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-object v4

    :cond_1
    :goto_1
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    goto :goto_0
.end method

.method public static b()Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;-><init>()V

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a:Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 8

    .line 2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->c:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    iget v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->e:Ljava/lang/String;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iget v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    iget v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->g:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    iget v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->g:I

    mul-int v1, v1, v2

    new-array v2, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->g:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 9
    :goto_1
    iget v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    if-ge v4, v5, :cond_1

    .line 10
    invoke-virtual {v0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    iget v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    aput v1, v2, v5

    goto :goto_2

    .line 12
    :cond_0
    iget v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    const/4 v6, -0x1

    aput v6, v2, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 13
    iget v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    iget v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->f:I

    iget v6, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->g:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->e:Ljava/lang/String;

    return-object p0
.end method
