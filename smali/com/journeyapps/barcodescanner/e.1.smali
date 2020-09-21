.class Lcom/journeyapps/barcodescanner/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/j;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/e;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/j;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "*** WARNING *** surfaceChanged() gave us a null surface!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/e;->a:Lcom/journeyapps/barcodescanner/j;

    new-instance p2, Lcom/journeyapps/barcodescanner/D;

    invoke-direct {p2, p3, p4}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/j;Lcom/journeyapps/barcodescanner/D;)Lcom/journeyapps/barcodescanner/D;

    .line 3
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/e;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/j;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/e;->a:Lcom/journeyapps/barcodescanner/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/j;Lcom/journeyapps/barcodescanner/D;)Lcom/journeyapps/barcodescanner/D;

    return-void
.end method
