.class Lcom/journeyapps/barcodescanner/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/r;->a(Landroid/content/Intent;Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/o;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/o;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/r;->i()V

    return-void
.end method
