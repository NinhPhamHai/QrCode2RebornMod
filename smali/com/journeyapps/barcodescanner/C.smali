.class public Lcom/journeyapps/barcodescanner/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/OrientationEventListener;

.field private d:Lcom/journeyapps/barcodescanner/A;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/C;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/journeyapps/barcodescanner/C;->a:I

    return p1
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/C;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/C;->b:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/C;)Lcom/journeyapps/barcodescanner/A;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/C;->d:Lcom/journeyapps/barcodescanner/A;

    return-object p0
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/C;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/journeyapps/barcodescanner/C;->a:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/C;->c:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/C;->c:Landroid/view/OrientationEventListener;

    .line 13
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/C;->b:Landroid/view/WindowManager;

    .line 14
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/C;->d:Lcom/journeyapps/barcodescanner/A;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/journeyapps/barcodescanner/A;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/C;->a()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/C;->d:Lcom/journeyapps/barcodescanner/A;

    const-string p2, "window"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/C;->b:Landroid/view/WindowManager;

    .line 7
    new-instance p2, Lcom/journeyapps/barcodescanner/B;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Lcom/journeyapps/barcodescanner/B;-><init>(Lcom/journeyapps/barcodescanner/C;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/C;->c:Landroid/view/OrientationEventListener;

    .line 8
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/C;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    .line 9
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/C;->b:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/journeyapps/barcodescanner/C;->a:I

    return-void
.end method
