.class Lcom/journeyapps/barcodescanner/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/j;->o()Landroid/view/TextureView$SurfaceTextureListener;
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
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/d;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/d;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d;->a:Lcom/journeyapps/barcodescanner/j;

    new-instance v0, Lcom/journeyapps/barcodescanner/D;

    invoke-direct {v0, p2, p3}, Lcom/journeyapps/barcodescanner/D;-><init>(II)V

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/j;Lcom/journeyapps/barcodescanner/D;)Lcom/journeyapps/barcodescanner/D;

    .line 2
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/j;->a(Lcom/journeyapps/barcodescanner/j;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
