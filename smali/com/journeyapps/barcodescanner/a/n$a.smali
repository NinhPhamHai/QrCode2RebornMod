.class final Lcom/journeyapps/barcodescanner/a/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/a/v;

.field private b:Lcom/journeyapps/barcodescanner/D;

.field final synthetic c:Lcom/journeyapps/barcodescanner/a/n;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n$a;->c:Lcom/journeyapps/barcodescanner/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n$a;->b:Lcom/journeyapps/barcodescanner/D;

    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/a/v;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/n$a;->a:Lcom/journeyapps/barcodescanner/a/v;

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n$a;->b:Lcom/journeyapps/barcodescanner/D;

    .line 2
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/n$a;->a:Lcom/journeyapps/barcodescanner/a/v;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v6

    .line 4
    new-instance p2, Lcom/journeyapps/barcodescanner/E;

    iget v4, v0, Lcom/journeyapps/barcodescanner/D;->a:I

    iget v5, v0, Lcom/journeyapps/barcodescanner/D;->b:I

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/n$a;->c:Lcom/journeyapps/barcodescanner/a/n;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a/n;->d()I

    move-result v7

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/journeyapps/barcodescanner/E;-><init>([BIIII)V

    .line 5
    invoke-interface {v1, p2}, Lcom/journeyapps/barcodescanner/a/v;->a(Lcom/journeyapps/barcodescanner/E;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No preview data received"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    invoke-static {}, Lcom/journeyapps/barcodescanner/a/n;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Camera preview failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-interface {v1, p1}, Lcom/journeyapps/barcodescanner/a/v;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/journeyapps/barcodescanner/a/n;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got preview callback, but no handler or resolution available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No resolution available"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/journeyapps/barcodescanner/a/v;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method
