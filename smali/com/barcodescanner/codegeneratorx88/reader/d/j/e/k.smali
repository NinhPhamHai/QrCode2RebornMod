.class public Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field etDescriptionEvent:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080079
    .end annotation
.end field

.field etLocationEvent:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080082
    .end annotation
.end field

.field etTitleEvent:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08008a
    .end annotation
.end field

.field etUrlEvent:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08008d
    .end annotation
.end field

.field private g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

.field private h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

.field private i:Landroid/content/Context;

.field ivSaveQREncodeEvent:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0800d0
    .end annotation
.end field

.field private j:Landroid/app/Dialog;

.field private k:Landroid/widget/TimePicker;

.field private l:Landroid/widget/DatePicker;

.field private m:Landroid/widget/TextView;

.field private n:J

.field private o:J

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field tvBeginTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f08017c
    .end annotation
.end field

.field tvEndTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f080184
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/widget/DatePicker$OnDateChangedListener;

.field private z:Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    .line 3
    iput-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->p:I

    .line 5
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->q:I

    .line 6
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->r:I

    .line 7
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->s:I

    .line 8
    iput v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->t:I

    .line 9
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->u:Z

    .line 10
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->v:Z

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/a;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/a;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->y:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 14
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/b;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->z:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 15
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/c;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->A:Landroid/view/View$OnClickListener;

    .line 16
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/d;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->B:Landroid/view/View$OnClickListener;

    .line 17
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/e;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/e;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->C:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->p:I

    return p0
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->p:I

    return p1
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->q:I

    return p0
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->q:I

    return p1
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    return-wide p1
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->r:I

    return p1
.end method

.method static synthetic c(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    return-wide v0
.end method

.method static synthetic d(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->s:I

    return p1
.end method

.method static synthetic d(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->t:I

    return p1
.end method

.method static synthetic e(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->u:Z

    return p0
.end method

.method static synthetic f(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m()V

    return-void
.end method

.method static synthetic g(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->r:I

    return p0
.end method

.method static synthetic h(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->s:I

    return p0
.end method

.method static synthetic j(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->t:I

    return p0
.end method

.method static synthetic k(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    return-object p0
.end method

.method private m()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->u:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l:Landroid/widget/DatePicker;

    invoke-virtual {v0, v2}, Landroid/widget/DatePicker;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l:Landroid/widget/DatePicker;

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->v:Z

    return p0
.end method

.method static synthetic n(Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "END_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "TITLE_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "DESCRIPTION_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "BEGIN_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "LOCATION_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    const v0, 0x7f0e00d1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    const v0, 0x7f0e00d0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 13
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 15
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 16
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43d8ee90 -> :sswitch_4
        -0x42d6ecbc -> :sswitch_3
        -0x25f85fa9 -> :sswitch_2
        -0x1697824d -> :sswitch_1
        0x504631f6 -> :sswitch_0
    .end sparse-switch
.end method

.method backEventCreate()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0801a3
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/g/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->j()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;->l()Lcom/barcodescanner/codegeneratorx88/reader/d/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_1
    :goto_0
    return-void
.end method

.method createQREncodeEvent()V
    .locals 11
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0800d0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvEndTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvBeginTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-wide v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    iget-wide v7, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    invoke-virtual/range {v1 .. v10}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->f(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$qrEvent()Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 5
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/c;->i()V

    return-void
.end method

.method public k()V
    .locals 4

    const-string v0, ", "

    .line 2
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    if-eqz v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etDescriptionEvent:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etLocationEvent:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$location()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$location()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$start()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    .line 7
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->h:Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;

    invoke-virtual {v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/e;->realmGet$end()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    invoke-static {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->n:J

    invoke-static {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvBeginTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    invoke-static {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->o:J

    invoke-static {v1, v2, v3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->tvEndTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public l()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0a0034

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 8
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x5a

    const/4 v4, -0x1

    invoke-static {v2, v0, v3, v4}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/app/Activity;Landroid/view/View;II)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    const v2, 0x7f08016e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k:Landroid/widget/TimePicker;

    .line 11
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    const v2, 0x7f080068

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l:Landroid/widget/DatePicker;

    .line 12
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    const v2, 0x7f08017f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    const v2, 0x7f08018a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    iget-object v2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    const v3, 0x7f08017d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->w:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->x:Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m()V

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->p:I

    const/4 v4, 0x5

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->r:I

    const/16 v5, 0xb

    .line 21
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->s:I

    const/16 v5, 0xc

    .line 22
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->t:I

    const/4 v5, 0x2

    .line 23
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->q:I

    .line 24
    iget-object v6, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l:Landroid/widget/DatePicker;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->y:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v6, v1, v5, v3, v4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 25
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k:Landroid/widget/TimePicker;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->z:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {v1, v3}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 26
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k:Landroid/widget/TimePicker;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 27
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a007a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    new-instance p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    iget-object p3, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    .line 5
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->g:Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;

    invoke-virtual {p2, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a(Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;)V

    .line 6
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->k()V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->etTitleEvent:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/utility/UtilsLib;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method showBeginTimePicker()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f08017c
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->v:Z

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l()V

    return-void
.end method

.method showEndTimePicker()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f080184
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->v:Z

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/e/k;->l()V

    return-void
.end method
