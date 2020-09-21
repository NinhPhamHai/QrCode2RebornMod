.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/BarcodeView$a;
    }
.end annotation


# instance fields
.field private B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

.field private C:Lcom/journeyapps/barcodescanner/a;

.field private D:Lcom/journeyapps/barcodescanner/x;

.field private E:Lcom/journeyapps/barcodescanner/t;

.field private F:Landroid/os/Handler;

.field private final G:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/j;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;->a:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    .line 4
    new-instance p1, Lcom/journeyapps/barcodescanner/c;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/c;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    .line 5
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;->a:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    .line 9
    new-instance p1, Lcom/journeyapps/barcodescanner/c;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/c;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;->a:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    .line 14
    new-instance p1, Lcom/journeyapps/barcodescanner/c;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/c;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    .line 15
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->q()V

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    return-object p0
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    return-object p0
.end method

.method private p()Lcom/journeyapps/barcodescanner/s;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lcom/journeyapps/barcodescanner/t;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->j()Lcom/journeyapps/barcodescanner/t;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lcom/journeyapps/barcodescanner/t;

    .line 3
    :cond_0
    new-instance v0, Lcom/journeyapps/barcodescanner/u;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/u;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lcom/journeyapps/barcodescanner/t;

    invoke-interface {v2, v1}, Lcom/journeyapps/barcodescanner/t;->a(Ljava/util/Map;)Lcom/journeyapps/barcodescanner/s;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/u;->a(Lcom/journeyapps/barcodescanner/s;)V

    return-object v1
.end method

.method private q()V
    .locals 2

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/y;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/y;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lcom/journeyapps/barcodescanner/t;

    .line 2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->F:Landroid/os/Handler;

    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->s()V

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$a;->a:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/journeyapps/barcodescanner/x;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->getCameraInstance()Lcom/journeyapps/barcodescanner/a/m;

    move-result-object v1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->p()Lcom/journeyapps/barcodescanner/s;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->F:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/journeyapps/barcodescanner/x;-><init>(Lcom/journeyapps/barcodescanner/a/m;Lcom/journeyapps/barcodescanner/s;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lcom/journeyapps/barcodescanner/x;

    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lcom/journeyapps/barcodescanner/x;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/j;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/x;->a(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lcom/journeyapps/barcodescanner/x;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/x;->a()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lcom/journeyapps/barcodescanner/x;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/x;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lcom/journeyapps/barcodescanner/x;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/a;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$a;->c:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->r()V

    return-void
.end method

.method public b(Lcom/journeyapps/barcodescanner/a;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$a;->b:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->r()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->s()V

    .line 2
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/j;->f()V

    return-void
.end method

.method public getDecoderFactory()Lcom/journeyapps/barcodescanner/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lcom/journeyapps/barcodescanner/t;

    return-object v0
.end method

.method protected h()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/j;->h()V

    .line 2
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->r()V

    return-void
.end method

.method protected j()Lcom/journeyapps/barcodescanner/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/y;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/y;-><init>()V

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$a;->a:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$a;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lcom/journeyapps/barcodescanner/a;

    .line 3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->s()V

    return-void
.end method

.method public setDecoderFactory(Lcom/journeyapps/barcodescanner/t;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/F;->a()V

    .line 2
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lcom/journeyapps/barcodescanner/t;

    .line 3
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lcom/journeyapps/barcodescanner/x;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->p()Lcom/journeyapps/barcodescanner/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/x;->a(Lcom/journeyapps/barcodescanner/s;)V

    :cond_0
    return-void
.end method
