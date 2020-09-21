.class public Lb/a/a/l;
.super Lb/a/a/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lb/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/l$b;,
        Lb/a/a/l$a;,
        Lb/a/a/l$c;,
        Lb/a/a/l$d;,
        Lb/a/a/l$j;,
        Lb/a/a/l$f;,
        Lb/a/a/l$g;,
        Lb/a/a/l$h;,
        Lb/a/a/l$e;,
        Lb/a/a/l$i;
    }
.end annotation


# instance fields
.field protected final c:Lb/a/a/l$a;

.field private final d:Landroid/os/Handler;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field h:Landroid/widget/EditText;

.field i:Landroid/support/v7/widget/RecyclerView;

.field j:Landroid/view/View;

.field k:Landroid/widget/FrameLayout;

.field l:Landroid/widget/ProgressBar;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/CheckBox;

.field q:Lcom/a/materialdialogs/internal/MDButton;

.field r:Lcom/a/materialdialogs/internal/MDButton;

.field s:Lcom/a/materialdialogs/internal/MDButton;

.field t:Lb/a/a/l$i;

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lb/a/a/l$a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lb/a/a/e;->b(Lb/a/a/l$a;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lb/a/a/d;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lb/a/a/l;->d:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    .line 4
    iget-object v0, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lb/a/a/e;->a(Lb/a/a/l$a;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/a/materialdialogs/internal/MDRootLayout;

    iput-object p1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    .line 6
    invoke-static {p0}, Lb/a/a/e;->a(Lb/a/a/l;)V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v0, Lb/a/a/l$a;->G:Lb/a/a/l$g;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 5
    iget v2, v0, Lb/a/a/l$a;->O:I

    if-ltz v2, :cond_1

    iget-object v0, v0, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 6
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v0, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    iget v0, v0, Lb/a/a/l$a;->O:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v2, v0, Lb/a/a/l$a;->G:Lb/a/a/l$g;

    iget v0, v0, Lb/a/a/l$a;->O:I

    invoke-interface {v2, p0, p1, v0, v1}, Lb/a/a/l$g;->a(Lb/a/a/l;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->H:Lb/a/a/l$f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v4, v4, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v3, v3, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->H:Lb/a/a/l$f;

    iget-object v2, p0, Lb/a/a/l;->u:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 10
    invoke-interface {v1, p0, v2, v0}, Lb/a/a/l$f;->a(Lb/a/a/l;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 46
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p1, Lb/a/a/l$a;->La:I

    if-eqz p2, :cond_0

    .line 47
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->La:I

    .line 49
    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget p2, Lb/a/a/m;->md_btn_stacked_selector:I

    .line 51
    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lb/a/a/m;->md_btn_stacked_selector:I

    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 53
    :cond_2
    sget-object p2, Lb/a/a/k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/16 v1, 0x15

    if-eq p1, p2, :cond_a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    .line 54
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p1, Lb/a/a/l$a;->Ma:I

    if-eqz p2, :cond_3

    .line 55
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->Ma:I

    .line 57
    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget p2, Lb/a/a/m;->md_btn_positive_selector:I

    .line 59
    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lb/a/a/m;->md_btn_positive_selector:I

    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 61
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_5

    .line 62
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->h:I

    invoke-static {p1, p2}, Lb/a/a/a/d;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    return-object p1

    .line 63
    :cond_6
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p1, Lb/a/a/l$a;->Oa:I

    if-eqz p2, :cond_7

    .line 64
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->Oa:I

    .line 66
    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 67
    :cond_7
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget p2, Lb/a/a/m;->md_btn_negative_selector:I

    .line 68
    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_8

    return-object p1

    .line 69
    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lb/a/a/m;->md_btn_negative_selector:I

    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 70
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_9

    .line 71
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->h:I

    invoke-static {p1, p2}, Lb/a/a/a/d;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_9
    return-object p1

    .line 72
    :cond_a
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p1, Lb/a/a/l$a;->Na:I

    if-eqz p2, :cond_b

    .line 73
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->Na:I

    .line 75
    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 76
    :cond_b
    iget-object p1, p1, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget p2, Lb/a/a/m;->md_btn_neutral_selector:I

    .line 77
    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    return-object p1

    .line 78
    :cond_c
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lb/a/a/m;->md_btn_neutral_selector:I

    invoke-static {p1, p2}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 79
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_d

    .line 80
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->h:I

    invoke-static {p1, p2}, Lb/a/a/a/d;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_d
    return-object p1
.end method

.method public final a(Lb/a/a/c;)Lcom/a/materialdialogs/internal/MDButton;
    .locals 1

    .line 81
    sget-object v0, Lb/a/a/k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    return-object p1

    .line 83
    :cond_0
    iget-object p1, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    return-object p1

    .line 84
    :cond_1
    iget-object p1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    return-object p1
.end method

.method a(IZ)V
    .locals 6

    .line 85
    iget-object v0, p0, Lb/a/a/l;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 86
    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v1, v1, Lb/a/a/l$a;->ta:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v5, v5, Lb/a/a/l$a;->ta:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d/%d"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lb/a/a/l;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_3

    .line 91
    :cond_1
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->ta:I

    if-lez p2, :cond_2

    if-gt p1, p2, :cond_3

    :cond_2
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->sa:I

    if-ge p1, p2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 92
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p1, p1, Lb/a/a/l$a;->ua:I

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p1, p1, Lb/a/a/l$a;->j:I

    :goto_1
    if-eqz v3, :cond_6

    .line 93
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->ua:I

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget p2, p2, Lb/a/a/l$a;->t:I

    .line 94
    :goto_2
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v0, v0, Lb/a/a/l$a;->ta:I

    if-lez v0, :cond_7

    .line 95
    iget-object v0, p0, Lb/a/a/l;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :cond_7
    iget-object p1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/a/materialdialogs/internal/g;->a(Landroid/widget/EditText;I)V

    .line 97
    sget-object p1, Lb/a/a/c;->a:Lb/a/a/c;

    invoke-virtual {p0, p1}, Lb/a/a/l;->a(Lb/a/a/c;)Lcom/a/materialdialogs/internal/MDButton;

    move-result-object p1

    xor-int/lit8 p2, v3, 0x1

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method public final a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public a(Lb/a/a/l;Landroid/view/View;ILjava/lang/CharSequence;Z)Z
    .locals 3

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/a/l;->t:Lb/a/a/l$i;

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    sget-object v1, Lb/a/a/l$i;->a:Lb/a/a/l$i;

    if-ne p1, v1, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-object p5, Lb/a/a/l$i;->c:Lb/a/a/l$i;

    if-ne p1, p5, :cond_8

    .line 7
    sget p1, Lb/a/a/q;->md_control:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 8
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    return p4

    .line 9
    :cond_2
    iget-object p2, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_5

    .line 10
    iget-object p2, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p2, p2, Lb/a/a/l$a;->I:Z

    if-eqz p2, :cond_4

    .line 12
    invoke-direct {p0}, Lb/a/a/l;->i()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 15
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 16
    :cond_5
    iget-object p2, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p2, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p2, p2, Lb/a/a/l$a;->I:Z

    if-eqz p2, :cond_7

    .line 18
    invoke-direct {p0}, Lb/a/a/l;->i()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 19
    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 20
    :cond_6
    iget-object p1, p0, Lb/a/a/l;->u:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 22
    :cond_8
    sget-object p5, Lb/a/a/l$i;->b:Lb/a/a/l$i;

    if-ne p1, p5, :cond_f

    .line 23
    sget p1, Lb/a/a/q;->md_control:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 24
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_9

    return p4

    .line 25
    :cond_9
    iget-object p5, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v1, p5, Lb/a/a/l$a;->O:I

    .line 26
    iget-boolean v2, p5, Lb/a/a/l$a;->R:Z

    if-eqz v2, :cond_a

    iget-object p5, p5, Lb/a/a/l$a;->m:Ljava/lang/CharSequence;

    if-nez p5, :cond_a

    .line 27
    invoke-virtual {p0}, Lb/a/a/l;->dismiss()V

    .line 28
    iget-object p5, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iput p3, p5, Lb/a/a/l$a;->O:I

    .line 29
    invoke-direct {p0, p2}, Lb/a/a/l;->b(Landroid/view/View;)Z

    goto :goto_0

    .line 30
    :cond_a
    iget-object p4, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p5, p4, Lb/a/a/l$a;->J:Z

    if-eqz p5, :cond_b

    .line 31
    iput p3, p4, Lb/a/a/l$a;->O:I

    .line 32
    invoke-direct {p0, p2}, Lb/a/a/l;->b(Landroid/view/View;)Z

    move-result p4

    .line 33
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iput v1, p2, Lb/a/a/l$a;->O:I

    goto :goto_0

    :cond_b
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_f

    .line 34
    iget-object p2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iput p3, p2, Lb/a/a/l$a;->O:I

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 36
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 37
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 38
    :cond_c
    :goto_1
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p1, p1, Lb/a/a/l$a;->R:Z

    if-eqz p1, :cond_d

    .line 39
    invoke-virtual {p0}, Lb/a/a/l;->dismiss()V

    :cond_d
    if-nez p5, :cond_e

    .line 40
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p4, p1, Lb/a/a/l$a;->E:Lb/a/a/l$e;

    if-eqz p4, :cond_e

    .line 41
    iget-object p1, p1, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p4, p0, p2, p3, p1}, Lb/a/a/l$e;->a(Lb/a/a/l;Landroid/view/View;ILjava/lang/CharSequence;)V

    :cond_e
    if-eqz p5, :cond_f

    .line 42
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p4, p1, Lb/a/a/l$a;->F:Lb/a/a/l$h;

    if-eqz p4, :cond_f

    .line 43
    iget-object p1, p1, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 45
    invoke-interface {p4, p0, p2, p3, p1}, Lb/a/a/l$h;->a(Lb/a/a/l;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_f
    :goto_2
    return v0
.end method

.method final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lb/a/a/i;

    invoke-direct {v1, p0}, Lb/a/a/i;-><init>(Lb/a/a/l;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final c()Lb/a/a/l$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    return-object v0
.end method

.method public final d()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    invoke-static {p0, v0}, Lb/a/a/a/c;->a(Landroid/content/DialogInterface;Lb/a/a/l$a;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method final e()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v1, v0, Lb/a/a/l$a;->Ka:I

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v1, v1, Lb/a/a/l$a;->Ka:I

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v1, Lb/a/a/m;->md_list_selector:I

    invoke-static {v0, v1}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lb/a/a/m;->md_list_selector:I

    invoke-static {v0, v1}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    return-object v0
.end method

.method public bridge synthetic findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/a/a/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v0, Lb/a/a/l$a;->Y:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_3

    .line 4
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lb/a/a/l$a;->Y:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 5
    :cond_3
    iget-object v0, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->Y:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 7
    :cond_4
    iget-object v0, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lb/a/a/l;->t:Lb/a/a/l$i;

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lb/a/a/b;

    invoke-virtual {v0, p0}, Lb/a/a/b;->a(Lb/a/a/b$b;)V

    :cond_5
    return-void
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lb/a/a/j;

    invoke-direct {v1, p0}, Lb/a/a/j;-><init>(Lb/a/a/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/c;

    .line 2
    sget-object v1, Lb/a/a/k;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->z:Lb/a/a/l$b;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Lb/a/a/l$b;->a(Lb/a/a/l;)V

    .line 5
    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->z:Lb/a/a/l$b;

    invoke-virtual {v1, p0}, Lb/a/a/l$b;->d(Lb/a/a/l;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, v1, Lb/a/a/l$a;->A:Lb/a/a/l$j;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1, p0, v0}, Lb/a/a/l$j;->a(Lb/a/a/l;Lb/a/a/c;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean v1, v1, Lb/a/a/l$a;->J:Z

    if-nez v1, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lb/a/a/l;->b(Landroid/view/View;)Z

    .line 10
    :cond_3
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p1, p1, Lb/a/a/l$a;->I:Z

    if-nez p1, :cond_4

    .line 11
    invoke-direct {p0}, Lb/a/a/l;->i()Z

    .line 12
    :cond_4
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v1, p1, Lb/a/a/l$a;->oa:Lb/a/a/l$d;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    iget-boolean p1, p1, Lb/a/a/l$a;->ra:Z

    if-nez p1, :cond_5

    .line 13
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lb/a/a/l$d;->a(Lb/a/a/l;Ljava/lang/CharSequence;)V

    .line 14
    :cond_5
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p1, p1, Lb/a/a/l$a;->R:Z

    if-eqz p1, :cond_c

    .line 15
    invoke-virtual {p0}, Lb/a/a/l;->dismiss()V

    goto :goto_0

    .line 16
    :cond_6
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->z:Lb/a/a/l$b;

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p1, p0}, Lb/a/a/l$b;->a(Lb/a/a/l;)V

    .line 18
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->z:Lb/a/a/l$b;

    invoke-virtual {p1, p0}, Lb/a/a/l$b;->b(Lb/a/a/l;)V

    .line 19
    :cond_7
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->B:Lb/a/a/l$j;

    if-eqz p1, :cond_8

    .line 20
    invoke-interface {p1, p0, v0}, Lb/a/a/l$j;->a(Lb/a/a/l;Lb/a/a/c;)V

    .line 21
    :cond_8
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p1, p1, Lb/a/a/l$a;->R:Z

    if-eqz p1, :cond_c

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 23
    :cond_9
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->z:Lb/a/a/l$b;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p1, p0}, Lb/a/a/l$b;->a(Lb/a/a/l;)V

    .line 25
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->z:Lb/a/a/l$b;

    invoke-virtual {p1, p0}, Lb/a/a/l$b;->c(Lb/a/a/l;)V

    .line 26
    :cond_a
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->C:Lb/a/a/l$j;

    if-eqz p1, :cond_b

    .line 27
    invoke-interface {p1, p0, v0}, Lb/a/a/l$j;->a(Lb/a/a/l;Lb/a/a/c;)V

    .line 28
    :cond_b
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p1, p1, Lb/a/a/l$a;->R:Z

    if-eqz p1, :cond_c

    .line 29
    invoke-virtual {p0}, Lb/a/a/l;->dismiss()V

    .line 30
    :cond_c
    :goto_0
    iget-object p1, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object p1, p1, Lb/a/a/l$a;->D:Lb/a/a/l$j;

    if-eqz p1, :cond_d

    .line 31
    invoke-interface {p1, p0, v0}, Lb/a/a/l$j;->a(Lb/a/a/l;Lb/a/a/c;)V

    :cond_d
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    invoke-static {p0, v0}, Lb/a/a/a/c;->b(Landroid/content/DialogInterface;Lb/a/a/l$a;)V

    .line 3
    iget-object v0, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lb/a/a/d;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb/a/a/d;->setContentView(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lb/a/a/d;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lb/a/a/d;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-object v0, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/a/l;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance v0, Lb/a/a/l$c;

    const-string v1, "Bad window token, you cannot show a dialog before an Activity is created or after it\'s hidden."

    invoke-direct {v0, v1}, Lb/a/a/l$c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
