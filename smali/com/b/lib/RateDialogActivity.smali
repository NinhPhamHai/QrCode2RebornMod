.class public Lcom/b/lib/RateDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "PRE_SHARING_CLICKED_MORE_APP"

.field public static b:Ljava/lang/String; = "PRE_SHARING_CLICKED_VOTE_APP_VALUE"

.field public static c:Ljava/lang/String; = "PRE_SHARING_COUNT_RECORD"

.field public static d:Ljava/lang/String; = "IS_ABLE_SHOW_RATE_ACTIVITY"

.field public static e:Ljava/lang/String; = "PRE_SHARING_CLICKED_MORE_APP_VALUE"

.field public static f:Ljava/lang/String; = "IS_NEW_DIALOG_HIGH_SCORE"

.field public static g:Ljava/lang/String; = "IS_NEW_DIALOG_HIGH_SCORE_FBMAILTO"

.field public static h:Ljava/lang/String; = "IS_NEW_DIALOG_HIGH_SCORE_APPNAME"


# instance fields
.field i:Landroid/widget/RatingBar;

.field j:Landroid/widget/Button;

.field k:Landroid/widget/Button;

.field l:Landroid/widget/Button;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Landroid/content/SharedPreferences;

.field p:Landroid/content/SharedPreferences$Editor;

.field q:Z

.field r:Z

.field s:I

.field private t:Z

.field u:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/b/lib/RateDialogActivity;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/b/lib/RateDialogActivity;->q:Z

    .line 4
    iput-boolean v0, p0, Lcom/b/lib/RateDialogActivity;->r:Z

    .line 5
    iput v0, p0, Lcom/b/lib/RateDialogActivity;->s:I

    .line 6
    iput-boolean v0, p0, Lcom/b/lib/RateDialogActivity;->t:Z

    return-void
.end method

.method private a()V
    .locals 4

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/b/lib/i;

    invoke-direct {v1, p0}, Lcom/b/lib/i;-><init>(Lcom/b/lib/RateDialogActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/b/lib/RateDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/b/lib/RateDialogActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    const-string p2, ""

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/b/lib/d;->rate_dislike3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/b/lib/d;->no_email_client_toast3:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    iput-object p0, p0, Lcom/b/lib/RateDialogActivity;->u:Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/b/lib/RateDialogActivity;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 5
    sget-object v2, Lcom/b/lib/RateDialogActivity;->f:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/b/lib/RateDialogActivity;->t:Z

    .line 6
    iget-boolean p1, p0, Lcom/b/lib/RateDialogActivity;->t:Z

    if-eqz p1, :cond_0

    .line 7
    sget p1, Lcom/b/lib/c;->rate_dialog_activity_high_score:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->n:Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/b/lib/RateDialogActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->m:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/b/lib/RateDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->o:Landroid/content/SharedPreferences;

    .line 11
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->o:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/b/lib/RateDialogActivity;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/b/lib/RateDialogActivity;->q:Z

    .line 12
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->o:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/b/lib/RateDialogActivity;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/b/lib/RateDialogActivity;->r:Z

    .line 13
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->p:Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->o:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/b/lib/RateDialogActivity;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/b/lib/RateDialogActivity;->s:I

    .line 15
    sget p1, Lcom/b/lib/b;->rating_5_stars:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->i:Landroid/widget/RatingBar;

    .line 16
    sget p1, Lcom/b/lib/b;->btn_rate:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->k:Landroid/widget/Button;

    .line 17
    sget p1, Lcom/b/lib/b;->btn_later:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->l:Landroid/widget/Button;

    .line 18
    sget p1, Lcom/b/lib/b;->btn_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/b/lib/RateDialogActivity;->j:Landroid/widget/Button;

    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 20
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->i:Landroid/widget/RatingBar;

    new-instance v0, Lcom/b/lib/e;

    invoke-direct {v0, p0}, Lcom/b/lib/e;-><init>(Lcom/b/lib/RateDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 22
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->j:Landroid/widget/Button;

    new-instance v0, Lcom/b/lib/f;

    invoke-direct {v0, p0}, Lcom/b/lib/f;-><init>(Lcom/b/lib/RateDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->k:Landroid/widget/Button;

    new-instance v0, Lcom/b/lib/g;

    invoke-direct {v0, p0}, Lcom/b/lib/g;-><init>(Lcom/b/lib/RateDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/b/lib/RateDialogActivity;->l:Landroid/widget/Button;

    new-instance v0, Lcom/b/lib/h;

    invoke-direct {v0, p0}, Lcom/b/lib/h;-><init>(Lcom/b/lib/RateDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
