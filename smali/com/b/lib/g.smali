.class Lcom/b/lib/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/lib/RateDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/lib/RateDialogActivity;


# direct methods
.method constructor <init>(Lcom/b/lib/RateDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "android.intent.action.VIEW"

    .line 1
    iget-object v0, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    iget-object v0, v0, Lcom/b/lib/RateDialogActivity;->p:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/b/lib/RateDialogActivity;->c:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object v0, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    iget-object v0, v0, Lcom/b/lib/RateDialogActivity;->p:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    iget-object v0, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    invoke-static {v0}, Lcom/b/lib/RateDialogActivity;->a(Lcom/b/lib/RateDialogActivity;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    iget-object v3, v3, Lcom/b/lib/RateDialogActivity;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    iget-object v3, v3, Lcom/b/lib/RateDialogActivity;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    iget-object p1, p1, Lcom/b/lib/RateDialogActivity;->u:Landroid/content/Context;

    invoke-static {p1}, Lcom/b/lib/a;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/b/lib/g;->a:Lcom/b/lib/RateDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
