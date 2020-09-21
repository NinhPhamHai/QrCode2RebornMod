.class Lcom/journeyapps/barcodescanner/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/a/m;->a(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/journeyapps/barcodescanner/a/m;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/a/m;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/k;->b:Lcom/journeyapps/barcodescanner/a/m;

    iput-wide p2, p0, Lcom/journeyapps/barcodescanner/a/k;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/k;->b:Lcom/journeyapps/barcodescanner/a/m;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/a/m;->a(Lcom/journeyapps/barcodescanner/a/m;)Lcom/journeyapps/barcodescanner/a/n;

    move-result-object v0

    iget-wide v1, p0, Lcom/journeyapps/barcodescanner/a/k;->a:D

    invoke-virtual {v0, v1, v2}, Lcom/journeyapps/barcodescanner/a/n;->a(D)V

    return-void
.end method
