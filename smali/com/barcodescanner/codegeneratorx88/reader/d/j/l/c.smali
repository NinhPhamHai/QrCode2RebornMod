.class Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/c;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/j/l/h;

    const/16 v0, 0x73

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
