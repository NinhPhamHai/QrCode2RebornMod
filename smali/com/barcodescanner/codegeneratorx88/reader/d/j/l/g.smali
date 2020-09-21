.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/g;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/LocationService;)V

    :cond_0
    return-void
.end method
