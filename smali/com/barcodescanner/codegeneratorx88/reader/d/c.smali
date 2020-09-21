.class public Lcom/barcodescanner/codegeneratorx88/reader/d/c;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;
.source "SourceFile"

# interfaces
.implements Lf/devrel/easypermissions/d$a;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field tvDecode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080181
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;-><init>()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/b/m;->h(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private l()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lf/devrel/easypermissions/d;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3e8

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->m()V

    return-void
.end method

.method decodeClick()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080181
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->internTask()V

    return-void
.end method

.method public internTask()V
    .locals 3
    .annotation runtime Lf/devrel/easypermissions/a;
        value = 0x74
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->m()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    .line 3
    sget-object v1, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->c:[Ljava/lang/String;

    const-string v2, "TODO: Location things"

    invoke-static {p0, v2, v0, v1}, Lf/devrel/easypermissions/d;->a(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/i;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->tvDecode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->k()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/c;->k()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
