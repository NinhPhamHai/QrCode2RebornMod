.class Lcom/b/lib/f;
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
    iput-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    iget-object p1, p1, Lcom/b/lib/RateDialogActivity;->p:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/b/lib/RateDialogActivity;->c:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    iget-object p1, p1, Lcom/b/lib/RateDialogActivity;->p:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    iget-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    invoke-static {p1}, Lcom/b/lib/RateDialogActivity;->a(Lcom/b/lib/RateDialogActivity;)V

    .line 4
    iget-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    sget-object v0, Lcom/b/lib/RateDialogActivity;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/b/lib/RateDialogActivity;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/b/lib/RateDialogActivity;->h:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/b/lib/d;->title_fb_mail3:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/b/lib/d;->title_fb_mail3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    invoke-virtual {v1, v0, p1}, Lcom/b/lib/RateDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/b/lib/f;->a:Lcom/b/lib/RateDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
