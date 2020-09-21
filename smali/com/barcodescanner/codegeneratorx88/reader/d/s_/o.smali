.class public Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/scan/k;
.implements Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$a;
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;
.implements Lf/devrel/easypermissions/d$a;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08002b
    .end annotation
.end field

.field btnSwitchCamera:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080043
    .end annotation
.end field

.field frQRDetails:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08009f
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Landroid/view/View;

.field private i:Lcom/journeyapps/barcodescanner/r;

.field imgBorderFramingRect:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800b6
    .end annotation
.end field

.field ivFlashLight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800c4
    .end annotation
.end field

.field private j:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

.field public k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

.field private l:Z

.field public m:Z

.field mImgDecreaseZooml:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800b8
    .end annotation
.end field

.field mImgIncreaseZoom:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800b9
    .end annotation
.end field

.field mSeekBarZoom:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080149
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->l:Z

    .line 3
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)Lcom/journeyapps/barcodescanner/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    const/16 v0, 0x8

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1, p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchListener(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$a;)V

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/j;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/j;->getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/j;->getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/a/m;->b()V

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    .line 6
    :cond_1
    new-instance v1, Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-direct {v1, v2, v3}, Lcom/journeyapps/barcodescanner/r;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    .line 7
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/journeyapps/barcodescanner/r;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/r;->c()V

    .line 9
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->l()V

    .line 10
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->n()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->btnSwitchCamera:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->btnSwitchCamera:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/j;->getCameraSettings()Lcom/journeyapps/barcodescanner/a/o;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/a/o;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->btnSwitchCamera:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 16
    :goto_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 18
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/d;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 19
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mImgDecreaseZooml:Landroid/widget/ImageView;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mImgIncreaseZoom:Landroid/widget/ImageView;

    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/f;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;

    invoke-direct {v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/g;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Lcom/journeyapps/barcodescanner/a;)V

    return-void
.end method

.method private m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->g()Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    invoke-direct {v1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->g()V

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
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

.method public b()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    const v1, 0x7f0e00fa

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    if-nez v1, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->h()V

    :cond_0
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

    .line 16
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->p()V

    return-void
.end method

.method public b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/r;->g()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->frQRDetails:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    if-nez v1, :cond_1

    .line 7
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;-><init>(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/d/d/a;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->frQRDetails:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->frQRDetails:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v0, v1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->l:Z

    .line 11
    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/f;->setupWindowAnimations(Z)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->setDataForViews(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    const v1, 0x7f0e006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->d()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->f()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->h()V

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->a(Landroid/os/Bundle;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->mSeekBarZoom:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    .line 7
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/journeyapps/barcodescanner/j;->setZoom(D)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->l:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->l:Z

    return-void
.end method

.method public internalTask()V
    .locals 3
    .annotation runtime Lf/devrel/easypermissions/a;
        value = 0x74
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->p()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    .line 3
    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->f:[Ljava/lang/String;

    const-string v2, "TODO: Location things"

    invoke-static {p0, v2, v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->d()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->h()Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->h()Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->onBack()V

    :cond_1
    return-void
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_0

    const-string v0, "refreshFramingRect"

    .line 2
    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->g()V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->g()V

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/i;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->b(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0a003f

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->h:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->h:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    new-instance p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->g:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    invoke-virtual {p1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 5
    invoke-direct {p0, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->a(Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->frQRDetails:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->h:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->j:Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a()V

    .line 4
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->onDestroy()V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->f()V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 2
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/j;->getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/j;->getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/m;->b()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onOffFlashlight()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08003d
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->l:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v0, v1, v2}, Lcom/journeyapps/barcodescanner/j;->setZoom(D)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->d()V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->ivFlashLight:Landroid/widget/ImageView;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->e()V

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->ivFlashLight:Landroid/widget/ImageView;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->g()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->a(I[Ljava/lang/String;[I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->h()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->i:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/r;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method scanQRCodeGallery()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080041
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->internalTask()V

    return-void
.end method

.method public switchCamera()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080043
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/j;->getCameraSettings()Lcom/journeyapps/barcodescanner/a/o;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/j;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/o;->b()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/o;->a(I)V

    .line 7
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->ivFlashLight:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a/o;->a(I)V

    .line 10
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->ivFlashLight:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/journeyapps/barcodescanner/j;->setCameraSettings(Lcom/journeyapps/barcodescanner/a/o;)V

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c()V

    :cond_3
    return-void
.end method
