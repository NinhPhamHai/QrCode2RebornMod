.class Lcom/journeyapps/barcodescanner/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/r;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/m;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/m;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->d()V

    .line 2
    invoke-static {}, Lcom/journeyapps/barcodescanner/r;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cameraError: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/m;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/r;->d(Lcom/journeyapps/barcodescanner/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/journeyapps/barcodescanner/r;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera closed; finishing activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/m;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/r;->e(Lcom/journeyapps/barcodescanner/r;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
