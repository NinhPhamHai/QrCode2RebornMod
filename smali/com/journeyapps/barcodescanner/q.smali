.class Lcom/journeyapps/barcodescanner/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/r;->d()V
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
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/q;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/q;->a:Lcom/journeyapps/barcodescanner/r;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/r;->e(Lcom/journeyapps/barcodescanner/r;)V

    return-void
.end method
