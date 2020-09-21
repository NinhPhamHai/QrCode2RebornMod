.class public Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/e/f;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field btnEditCreatedQR:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08003b
    .end annotation
.end field

.field btnOpenCreatedQRHistory:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08003e
    .end annotation
.end field

.field btnSaveCreatedQR:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080033
    .end annotation
.end field

.field private c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

.field private d:Landroid/content/Context;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

.field private g:Z

.field ivQREncode:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800cd
    .end annotation
.end field

.field ivQRTypeEncode:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800ce
    .end annotation
.end field

.field tvContentEncode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08018d
    .end annotation
.end field

.field tvTimeEncode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080191
    .end annotation
.end field

.field tvTitleEncode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080198
    .end annotation
.end field

.field viewCloseEncode:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080039
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->g:Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/temp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v1, "[^a-zA-Z0-9-_\\.]"

    const-string v2, "_"

    .line 15
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpeg"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 19
    :cond_2
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 21
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 22
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 23
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 24
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.extra.TEXT"

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "image/*"

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->e:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v2, v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v2, v2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/j;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e00c1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPictures/QRCode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnEditCreatedQR:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnOpenCreatedQRHistory:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnSaveCreatedQR:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnEditCreatedQR:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnOpenCreatedQRHistory:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->btnSaveCreatedQR:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTitleEncode:Landroid/widget/TextView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    iget-object v3, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvContentEncode:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->ivQRTypeEncode:Landroid/widget/ImageView;

    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    iget-object v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTimeEncode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    iget-wide v2, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->d:J

    invoke-static {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->ivQREncode:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->e:Landroid/graphics/Bitmap;

    .line 7
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    .line 8
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->l()V

    return-void
.end method

.method actionSaveQREncode()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080033
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->g:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/j;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->k()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void
.end method

.method actionShareQREncode()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080034
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->g:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method closeDetailsEncode()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080039
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/j;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/h;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method editCreatedQR()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08003b
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/d/g/e;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->e:Ljava/lang/String;

    const-string v2, "CREATED_QR_CODE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CREATED_QR_CODE_ID"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    invoke-virtual {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->tvTimeEncode:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-wide v0, p3, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->d:J

    invoke-static {p2, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/j;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
	.line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    #iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    #invoke-static {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/h;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    invoke-virtual {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->k()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lb/c/a/b;->a(Landroid/app/Activity;)V

    const p1, 0x7f0a001d

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f080051

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/n;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/n;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v2, v2, v2, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/n;->a(Landroid/view/View;IIII)V

    .line 6
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    .line 8
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    invoke-virtual {p1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->c:Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;->a()V

    .line 2
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->g:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->f:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    iget-object v1, v1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->actionSaveQREncode()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/h;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method openCreatedQRHistory()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08003e
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->d()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/barcodescanner/codegeneratorx88/reader/d/h/c/m;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
