.class public Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

.field private c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c:Z

    .line 3
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->d:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 8
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->b()V

    .line 9
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->b()V

    return-void
.end method

.method static synthetic c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c:Z

    .line 6
    new-instance v1, Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;

    invoke-direct {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;-><init>()V

    new-instance v2, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;

    invoke-direct {v2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)V

    const-string v3, "SEARCH_PRODUCT"

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V

    .line 7
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a()V

    return-void
.end method
