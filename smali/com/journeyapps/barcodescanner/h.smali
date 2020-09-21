.class Lcom/journeyapps/barcodescanner/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/A;


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
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/h;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/h;->a:Lcom/journeyapps/barcodescanner/j;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/j;->d(Lcom/journeyapps/barcodescanner/j;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/journeyapps/barcodescanner/g;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/g;-><init>(Lcom/journeyapps/barcodescanner/h;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
