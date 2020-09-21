.class Lcom/journeyapps/barcodescanner/B;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/C;->a(Landroid/content/Context;Lcom/journeyapps/barcodescanner/A;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/C;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/C;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/B;->a:Lcom/journeyapps/barcodescanner/C;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/B;->a:Lcom/journeyapps/barcodescanner/C;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/C;->a(Lcom/journeyapps/barcodescanner/C;)Landroid/view/WindowManager;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/B;->a:Lcom/journeyapps/barcodescanner/C;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/C;->b(Lcom/journeyapps/barcodescanner/C;)Lcom/journeyapps/barcodescanner/A;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/B;->a:Lcom/journeyapps/barcodescanner/C;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/C;->a(Lcom/journeyapps/barcodescanner/C;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/B;->a:Lcom/journeyapps/barcodescanner/C;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/C;->c(Lcom/journeyapps/barcodescanner/C;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/B;->a:Lcom/journeyapps/barcodescanner/C;

    invoke-static {v1, p1}, Lcom/journeyapps/barcodescanner/C;->a(Lcom/journeyapps/barcodescanner/C;I)I

    .line 7
    invoke-interface {v0, p1}, Lcom/journeyapps/barcodescanner/A;->a(I)V

    :cond_0
    return-void
.end method
