.class Lb/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lb/a/a/l$a;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l$a;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    sget p0, Lb/a/a/r;->md_dialog_custom:I

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/l$a;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    iget-object v0, p0, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lb/a/a/l$a;->ka:I

    const/4 v1, -0x2

    if-le v0, v1, :cond_2

    .line 5
    sget p0, Lb/a/a/r;->md_dialog_progress:I

    return p0

    .line 6
    :cond_2
    iget-boolean v0, p0, Lb/a/a/l$a;->ia:Z

    if-eqz v0, :cond_4

    .line 7
    iget-boolean p0, p0, Lb/a/a/l$a;->Ba:Z

    if-eqz p0, :cond_3

    .line 8
    sget p0, Lb/a/a/r;->md_dialog_progress_indeterminate_horizontal:I

    return p0

    .line 9
    :cond_3
    sget p0, Lb/a/a/r;->md_dialog_progress_indeterminate:I

    return p0

    .line 10
    :cond_4
    iget-object v0, p0, Lb/a/a/l$a;->oa:Lb/a/a/l$d;

    if-eqz v0, :cond_6

    .line 11
    iget-object p0, p0, Lb/a/a/l$a;->wa:Ljava/lang/CharSequence;

    if-eqz p0, :cond_5

    .line 12
    sget p0, Lb/a/a/r;->md_dialog_input_check:I

    return p0

    .line 13
    :cond_5
    sget p0, Lb/a/a/r;->md_dialog_input:I

    return p0

    .line 14
    :cond_6
    iget-object p0, p0, Lb/a/a/l$a;->wa:Ljava/lang/CharSequence;

    if-eqz p0, :cond_7

    .line 15
    sget p0, Lb/a/a/r;->md_dialog_basic_check:I

    return p0

    .line 16
    :cond_7
    sget p0, Lb/a/a/r;->md_dialog_basic:I

    return p0

    .line 17
    :cond_8
    :goto_0
    iget-object p0, p0, Lb/a/a/l$a;->wa:Ljava/lang/CharSequence;

    if-eqz p0, :cond_9

    .line 18
    sget p0, Lb/a/a/r;->md_dialog_list_check:I

    return p0

    .line 19
    :cond_9
    sget p0, Lb/a/a/r;->md_dialog_list:I

    return p0
.end method

.method private static a(Landroid/widget/ProgressBar;)V
    .locals 2

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v1, v0}, Landroid/widget/ProgressBar;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static a(Lb/a/a/l;)V
    .locals 11

    .line 20
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    .line 21
    iget-boolean v1, v0, Lb/a/a/l$a;->L:Z

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 22
    iget-boolean v1, v0, Lb/a/a/l$a;->M:Z

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 23
    iget v1, v0, Lb/a/a/l$a;->ga:I

    if-nez v1, :cond_0

    .line 24
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->md_background_color:I

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lb/a/a/m;->colorBackgroundFloating:I

    invoke-static {v3, v4}, Lb/a/a/a/c;->d(Landroid/content/Context;I)I

    move-result v3

    .line 26
    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lb/a/a/l$a;->ga:I

    .line 27
    :cond_0
    iget v1, v0, Lb/a/a/l$a;->ga:I

    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 29
    iget-object v2, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/a/o;->md_bg_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 32
    iget v2, v0, Lb/a/a/l$a;->ga:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_1
    iget-boolean v1, v0, Lb/a/a/l$a;->Fa:Z

    if-nez v1, :cond_2

    .line 35
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->md_positive_color:I

    iget-object v3, v0, Lb/a/a/l$a;->v:Landroid/content/res/ColorStateList;

    .line 36
    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lb/a/a/l$a;->v:Landroid/content/res/ColorStateList;

    .line 37
    :cond_2
    iget-boolean v1, v0, Lb/a/a/l$a;->Ga:Z

    if-nez v1, :cond_3

    .line 38
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->md_neutral_color:I

    iget-object v3, v0, Lb/a/a/l$a;->x:Landroid/content/res/ColorStateList;

    .line 39
    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lb/a/a/l$a;->x:Landroid/content/res/ColorStateList;

    .line 40
    :cond_3
    iget-boolean v1, v0, Lb/a/a/l$a;->Ha:Z

    if-nez v1, :cond_4

    .line 41
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->md_negative_color:I

    iget-object v3, v0, Lb/a/a/l$a;->w:Landroid/content/res/ColorStateList;

    .line 42
    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lb/a/a/l$a;->w:Landroid/content/res/ColorStateList;

    .line 43
    :cond_4
    iget-boolean v1, v0, Lb/a/a/l$a;->Ia:Z

    if-nez v1, :cond_5

    .line 44
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->md_widget_color:I

    iget v3, v0, Lb/a/a/l$a;->t:I

    .line 45
    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lb/a/a/l$a;->t:I

    .line 46
    :cond_5
    iget-boolean v1, v0, Lb/a/a/l$a;->Ca:Z

    const v2, 0x1010036

    if-nez v1, :cond_6

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lb/a/a/a/c;->d(Landroid/content/Context;I)I

    move-result v1

    .line 48
    iget-object v3, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v4, Lb/a/a/m;->md_title_color:I

    .line 49
    invoke-static {v3, v4, v1}, Lb/a/a/a/c;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lb/a/a/l$a;->i:I

    .line 50
    :cond_6
    iget-boolean v1, v0, Lb/a/a/l$a;->Da:Z

    if-nez v1, :cond_7

    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1010038

    invoke-static {v1, v3}, Lb/a/a/a/c;->d(Landroid/content/Context;I)I

    move-result v1

    .line 52
    iget-object v3, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v4, Lb/a/a/m;->md_content_color:I

    .line 53
    invoke-static {v3, v4, v1}, Lb/a/a/a/c;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lb/a/a/l$a;->j:I

    .line 54
    :cond_7
    iget-boolean v1, v0, Lb/a/a/l$a;->Ea:Z

    if-nez v1, :cond_8

    .line 55
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v3, Lb/a/a/m;->md_item_color:I

    iget v4, v0, Lb/a/a/l$a;->j:I

    .line 56
    invoke-static {v1, v3, v4}, Lb/a/a/a/c;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lb/a/a/l$a;->ha:I

    .line 57
    :cond_8
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_title:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_titleFrame:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/l;->j:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_content:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_contentRecyclerView:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    .line 62
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_promptCheckbox:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    .line 63
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_buttonDefaultPositive:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/a/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    .line 64
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_buttonDefaultNeutral:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/a/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    .line 65
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_buttonDefaultNegative:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/a/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    .line 66
    iget-object v1, v0, Lb/a/a/l$a;->oa:Lb/a/a/l$d;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lb/a/a/l$a;->m:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    .line 67
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lb/a/a/l$a;->m:Ljava/lang/CharSequence;

    .line 68
    :cond_9
    iget-object v1, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    iget-object v3, v0, Lb/a/a/l$a;->m:Ljava/lang/CharSequence;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_0

    :cond_a
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    iget-object v3, v0, Lb/a/a/l$a;->n:Ljava/lang/CharSequence;

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_1

    :cond_b
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    iget-object v3, v0, Lb/a/a/l$a;->o:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_2

    :cond_c
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 72
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 73
    iget-object v1, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 74
    iget-boolean v1, v0, Lb/a/a/l$a;->p:Z

    if-eqz v1, :cond_d

    .line 75
    iget-object v1, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 76
    :cond_d
    iget-boolean v1, v0, Lb/a/a/l$a;->q:Z

    if-eqz v1, :cond_e

    .line 77
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 78
    :cond_e
    iget-boolean v1, v0, Lb/a/a/l$a;->r:Z

    if-eqz v1, :cond_f

    .line 79
    iget-object v1, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 80
    :cond_f
    iget-object v1, v0, Lb/a/a/l$a;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 81
    iget-object v1, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    iget-object v6, v0, Lb/a/a/l$a;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 83
    :cond_10
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v6, Lb/a/a/m;->md_icon:I

    invoke-static {v1, v6}, Lb/a/a/a/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 84
    iget-object v6, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v6, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 86
    :cond_11
    iget-object v1, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_3
    iget v1, v0, Lb/a/a/l$a;->W:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_12

    .line 88
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v7, Lb/a/a/m;->md_icon_max_size:I

    invoke-static {v1, v7}, Lb/a/a/a/c;->e(Landroid/content/Context;I)I

    move-result v1

    .line 89
    :cond_12
    iget-boolean v7, v0, Lb/a/a/l$a;->V:Z

    if-nez v7, :cond_13

    iget-object v7, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v8, Lb/a/a/m;->md_icon_limit_icon_to_default_size:I

    .line 90
    invoke-static {v7, v8}, Lb/a/a/a/c;->c(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 91
    :cond_13
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lb/a/a/o;->md_icon_max_size:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_14
    if-le v1, v6, :cond_15

    .line 92
    iget-object v7, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 93
    iget-object v7, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 94
    iget-object v7, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 95
    iget-object v1, p0, Lb/a/a/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 96
    :cond_15
    iget-boolean v1, v0, Lb/a/a/l$a;->Ja:Z

    if-nez v1, :cond_16

    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v7, Lb/a/a/m;->md_divider:I

    invoke-static {v1, v7}, Lb/a/a/a/c;->d(Landroid/content/Context;I)I

    move-result v1

    .line 98
    iget-object v7, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v8, Lb/a/a/m;->md_divider_color:I

    .line 99
    invoke-static {v7, v8, v1}, Lb/a/a/a/c;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lb/a/a/l$a;->fa:I

    .line 100
    :cond_16
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget v7, v0, Lb/a/a/l$a;->fa:I

    invoke-virtual {v1, v7}, Lcom/a/materialdialogs/internal/MDRootLayout;->setDividerColor(I)V

    .line 101
    iget-object v1, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    const/16 v7, 0x11

    if-eqz v1, :cond_19

    .line 102
    iget-object v8, v0, Lb/a/a/l$a;->T:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v8}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 103
    iget-object v1, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    iget v8, v0, Lb/a/a/l$a;->i:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    iget-object v8, v0, Lb/a/a/l$a;->c:Lb/a/a/g;

    invoke-virtual {v8}, Lb/a/a/g;->a()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_17

    .line 106
    iget-object v1, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    iget-object v8, v0, Lb/a/a/l$a;->c:Lb/a/a/g;

    invoke-virtual {v8}, Lb/a/a/g;->b()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 107
    :cond_17
    iget-object v1, v0, Lb/a/a/l$a;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_18

    .line 108
    iget-object v1, p0, Lb/a/a/l;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 109
    :cond_18
    iget-object v8, p0, Lb/a/a/l;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lb/a/a/l;->j:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_19
    :goto_4
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    .line 112
    new-instance v8, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    iget-object v8, v0, Lb/a/a/l$a;->S:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v8}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 114
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, v0, Lb/a/a/l$a;->N:F

    invoke-virtual {v1, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 115
    iget-object v1, v0, Lb/a/a/l$a;->y:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1a

    .line 116
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lb/a/a/a/c;->d(Landroid/content/Context;I)I

    move-result v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_5

    .line 119
    :cond_1a
    iget-object v2, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    :goto_5
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    iget v2, v0, Lb/a/a/l$a;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    iget-object v2, v0, Lb/a/a/l$a;->d:Lb/a/a/g;

    invoke-virtual {v2}, Lb/a/a/g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_1b

    .line 123
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    iget-object v2, v0, Lb/a/a/l$a;->d:Lb/a/a/g;

    invoke-virtual {v2}, Lb/a/a/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 124
    :cond_1b
    iget-object v1, v0, Lb/a/a/l$a;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 125
    iget-object v2, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 127
    :cond_1c
    iget-object v1, p0, Lb/a/a/l;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_1d
    :goto_6
    iget-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1e

    .line 129
    iget-object v2, v0, Lb/a/a/l$a;->wa:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lb/a/a/l$a;->xa:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    iget-object v2, v0, Lb/a/a/l$a;->ya:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    iget-object v2, v0, Lb/a/a/l$a;->S:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v2}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 133
    iget-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    iget v2, v0, Lb/a/a/l$a;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 134
    iget-object v1, p0, Lb/a/a/l;->p:Landroid/widget/CheckBox;

    iget v2, v0, Lb/a/a/l$a;->t:I

    invoke-static {v1, v2}, Lcom/a/materialdialogs/internal/g;->a(Landroid/widget/CheckBox;I)V

    .line 135
    :cond_1e
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget-object v2, v0, Lb/a/a/l$a;->g:Lb/a/a/g;

    invoke-virtual {v1, v2}, Lcom/a/materialdialogs/internal/MDRootLayout;->setButtonGravity(Lb/a/a/g;)V

    .line 136
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget-object v2, v0, Lb/a/a/l$a;->e:Lb/a/a/g;

    invoke-virtual {v1, v2}, Lcom/a/materialdialogs/internal/MDRootLayout;->setButtonStackedGravity(Lb/a/a/g;)V

    .line 137
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    iget-object v2, v0, Lb/a/a/l$a;->da:Lb/a/a/u;

    invoke-virtual {v1, v2}, Lcom/a/materialdialogs/internal/MDRootLayout;->setStackingBehavior(Lb/a/a/u;)V

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1f

    .line 139
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    const v2, 0x101038c

    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 140
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->textAllCaps:I

    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;IZ)Z

    move-result v1

    goto :goto_7

    .line 141
    :cond_1f
    iget-object v1, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v2, Lb/a/a/m;->textAllCaps:I

    invoke-static {v1, v2, v3}, Lb/a/a/a/c;->a(Landroid/content/Context;IZ)Z

    move-result v1

    .line 142
    :cond_20
    :goto_7
    iget-object v2, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    .line 143
    iget-object v4, v0, Lb/a/a/l$a;->T:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v4}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 144
    invoke-virtual {v2, v1}, Lcom/a/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 145
    iget-object v4, v0, Lb/a/a/l$a;->m:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, v0, Lb/a/a/l$a;->v:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    iget-object v2, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v4, Lb/a/a/c;->a:Lb/a/a/c;

    invoke-virtual {p0, v4, v3}, Lb/a/a/l;->a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v2, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v4, Lb/a/a/c;->a:Lb/a/a/c;

    .line 149
    invoke-virtual {p0, v4, v5}, Lb/a/a/l;->a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 150
    invoke-virtual {v2, v4}, Lcom/a/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v2, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v4, Lb/a/a/c;->a:Lb/a/a/c;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Lb/a/a/l;->q:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    .line 154
    iget-object v4, v0, Lb/a/a/l$a;->T:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v4}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 155
    invoke-virtual {v2, v1}, Lcom/a/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 156
    iget-object v4, v0, Lb/a/a/l$a;->o:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, v0, Lb/a/a/l$a;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 158
    iget-object v2, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v4, Lb/a/a/c;->c:Lb/a/a/c;

    invoke-virtual {p0, v4, v3}, Lb/a/a/l;->a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v2, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v4, Lb/a/a/c;->c:Lb/a/a/c;

    .line 160
    invoke-virtual {p0, v4, v5}, Lb/a/a/l;->a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 161
    invoke-virtual {v2, v4}, Lcom/a/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v2, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v4, Lb/a/a/c;->c:Lb/a/a/c;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 163
    iget-object v2, p0, Lb/a/a/l;->s:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    .line 165
    iget-object v4, v0, Lb/a/a/l$a;->T:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v4}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 166
    invoke-virtual {v2, v1}, Lcom/a/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 167
    iget-object v1, v0, Lb/a/a/l$a;->n:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, v0, Lb/a/a/l$a;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 169
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v2, Lb/a/a/c;->b:Lb/a/a/c;

    invoke-virtual {p0, v2, v3}, Lb/a/a/l;->a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v2, Lb/a/a/c;->b:Lb/a/a/c;

    invoke-virtual {p0, v2, v5}, Lb/a/a/l;->a(Lb/a/a/c;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    sget-object v2, Lb/a/a/c;->b:Lb/a/a/c;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lb/a/a/l;->r:Lcom/a/materialdialogs/internal/MDButton;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, v0, Lb/a/a/l$a;->H:Lb/a/a/l$f;

    if-eqz v1, :cond_21

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/a/a/l;->u:Ljava/util/List;

    .line 175
    :cond_21
    iget-object v1, p0, Lb/a/a/l;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_26

    .line 176
    iget-object v1, v0, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_25

    .line 177
    iget-object v1, v0, Lb/a/a/l$a;->G:Lb/a/a/l$g;

    if-eqz v1, :cond_22

    .line 178
    sget-object v1, Lb/a/a/l$i;->b:Lb/a/a/l$i;

    iput-object v1, p0, Lb/a/a/l;->t:Lb/a/a/l$i;

    goto :goto_8

    .line 179
    :cond_22
    iget-object v1, v0, Lb/a/a/l$a;->H:Lb/a/a/l$f;

    if-eqz v1, :cond_23

    .line 180
    sget-object v1, Lb/a/a/l$i;->c:Lb/a/a/l$i;

    iput-object v1, p0, Lb/a/a/l;->t:Lb/a/a/l$i;

    .line 181
    iget-object v1, v0, Lb/a/a/l$a;->P:[Ljava/lang/Integer;

    if-eqz v1, :cond_24

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lb/a/a/l;->u:Ljava/util/List;

    const/4 v1, 0x0

    .line 183
    iput-object v1, v0, Lb/a/a/l$a;->P:[Ljava/lang/Integer;

    goto :goto_8

    .line 184
    :cond_23
    sget-object v1, Lb/a/a/l$i;->a:Lb/a/a/l$i;

    iput-object v1, p0, Lb/a/a/l;->t:Lb/a/a/l$i;

    .line 185
    :cond_24
    :goto_8
    new-instance v1, Lb/a/a/b;

    iget-object v2, p0, Lb/a/a/l;->t:Lb/a/a/l$i;

    .line 186
    invoke-static {v2}, Lb/a/a/l$i;->a(Lb/a/a/l$i;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lb/a/a/b;-><init>(Lb/a/a/l;I)V

    iput-object v1, v0, Lb/a/a/l$a;->X:Landroid/support/v7/widget/RecyclerView$Adapter;

    goto :goto_9

    .line 187
    :cond_25
    instance-of v2, v1, Lcom/a/materialdialogs/internal/b;

    if-eqz v2, :cond_26

    .line 188
    check-cast v1, Lcom/a/materialdialogs/internal/b;

    invoke-interface {v1, p0}, Lcom/a/materialdialogs/internal/b;->a(Lb/a/a/l;)V

    .line 189
    :cond_26
    :goto_9
    invoke-static {p0}, Lb/a/a/e;->c(Lb/a/a/l;)V

    .line 190
    invoke-static {p0}, Lb/a/a/e;->b(Lb/a/a/l;)V

    .line 191
    iget-object v1, v0, Lb/a/a/l$a;->s:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 192
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v2, Lb/a/a/q;->md_root:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v1}, Lcom/a/materialdialogs/internal/MDRootLayout;->a()V

    .line 193
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v2, Lb/a/a/q;->md_customViewFrame:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 194
    iput-object v1, p0, Lb/a/a/l;->k:Landroid/widget/FrameLayout;

    .line 195
    iget-object v2, v0, Lb/a/a/l$a;->s:Landroid/view/View;

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    :cond_27
    iget-boolean v3, v0, Lb/a/a/l$a;->ea:Z

    const/4 v4, -0x2

    if-eqz v3, :cond_29

    .line 199
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 200
    sget v7, Lb/a/a/o;->md_dialog_frame_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 201
    new-instance v8, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 202
    sget v9, Lb/a/a/o;->md_content_padding_top:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 203
    sget v10, Lb/a/a/o;->md_content_padding_bottom:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 204
    invoke-virtual {v8, v5}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 205
    instance-of v10, v2, Landroid/widget/EditText;

    if-eqz v10, :cond_28

    .line 206
    invoke-virtual {v8, v7, v9, v7, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_a

    .line 207
    :cond_28
    invoke-virtual {v8, v5, v9, v5, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 208
    invoke-virtual {v2, v7, v5, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    :goto_a
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v8

    .line 210
    :cond_29
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_2a
    iget-object v1, v0, Lb/a/a/l$a;->ca:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v1, :cond_2b

    .line 212
    invoke-virtual {p0, v1}, Lb/a/a/d;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 213
    :cond_2b
    iget-object v1, v0, Lb/a/a/l$a;->aa:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_2c

    .line 214
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 215
    :cond_2c
    iget-object v1, v0, Lb/a/a/l$a;->Z:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_2d

    .line 216
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 217
    :cond_2d
    iget-object v1, v0, Lb/a/a/l$a;->ba:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_2e

    .line 218
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 219
    :cond_2e
    invoke-virtual {p0}, Lb/a/a/d;->a()V

    .line 220
    invoke-virtual {p0}, Lb/a/a/l;->g()V

    .line 221
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    invoke-virtual {p0, v1}, Lb/a/a/d;->a(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0}, Lb/a/a/l;->b()V

    .line 223
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 224
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 225
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 227
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 228
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 229
    iget-object v3, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 230
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lb/a/a/o;->md_dialog_vertical_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 231
    iget-object v4, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 232
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lb/a/a/o;->md_dialog_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 233
    iget-object v0, v0, Lb/a/a/l$a;->a:Landroid/content/Context;

    .line 234
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lb/a/a/o;->md_dialog_max_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 235
    iget-object v4, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v4, v2}, Lcom/a/materialdialogs/internal/MDRootLayout;->setMaxHeight(I)V

    .line 236
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 237
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 239
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static b(Lb/a/a/l$a;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/l$a;->a:Landroid/content/Context;

    sget v1, Lb/a/a/m;->md_dark_theme:I

    iget-object v2, p0, Lb/a/a/l$a;->K:Lb/a/a/v;

    sget-object v3, Lb/a/a/v;->b:Lb/a/a/v;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v0, v1, v2}, Lb/a/a/a/c;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lb/a/a/v;->b:Lb/a/a/v;

    goto :goto_1

    :cond_1
    sget-object v1, Lb/a/a/v;->a:Lb/a/a/v;

    :goto_1
    iput-object v1, p0, Lb/a/a/l$a;->K:Lb/a/a/v;

    if-eqz v0, :cond_2

    .line 4
    sget p0, Lb/a/a/s;->MD_Dark:I

    goto :goto_2

    :cond_2
    sget p0, Lb/a/a/s;->MD_Light:I

    :goto_2
    return p0
.end method

.method private static b(Lb/a/a/l;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    .line 6
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    const v2, 0x1020009

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    .line 7
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lb/a/a/l$a;->S:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v2}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, v0, Lb/a/a/l$a;->ma:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 10
    iget-object v2, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l;->h()V

    .line 12
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    iget-object v2, v0, Lb/a/a/l$a;->na:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 14
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    iget v2, v0, Lb/a/a/l$a;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 15
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    iget v2, v0, Lb/a/a/l$a;->j:I

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, Lb/a/a/a/c;->a(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 16
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget v2, v2, Lb/a/a/l$a;->t:I

    invoke-static {v1, v2}, Lcom/a/materialdialogs/internal/g;->a(Landroid/widget/EditText;I)V

    .line 17
    iget v1, v0, Lb/a/a/l$a;->qa:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 18
    iget-object v3, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 19
    iget v1, v0, Lb/a/a/l$a;->qa:I

    const/16 v3, 0x90

    if-eq v1, v3, :cond_2

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 20
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 21
    :cond_2
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v3, Lb/a/a/q;->md_minMax:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/a/a/l;->o:Landroid/widget/TextView;

    .line 22
    iget v1, v0, Lb/a/a/l$a;->sa:I

    if-gtz v1, :cond_4

    iget v1, v0, Lb/a/a/l$a;->ta:I

    if-le v1, v2, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lb/a/a/l;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lb/a/a/l;->o:Landroid/widget/TextView;

    goto :goto_1

    .line 25
    :cond_4
    :goto_0
    iget-object v1, p0, Lb/a/a/l;->h:Landroid/widget/EditText;

    .line 26
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-boolean v0, v0, Lb/a/a/l$a;->pa:Z

    xor-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p0, v1, v0}, Lb/a/a/l;->a(IZ)V

    :goto_1
    return-void
.end method

.method private static c(Lb/a/a/l;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/a/l;->c:Lb/a/a/l$a;

    .line 2
    iget-boolean v1, v0, Lb/a/a/l$a;->ia:Z

    if-nez v1, :cond_0

    iget v1, v0, Lb/a/a/l$a;->ka:I

    const/4 v2, -0x2

    if-le v1, v2, :cond_a

    .line 3
    :cond_0
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    .line 4
    iget-object v1, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    .line 6
    iget-boolean v1, v0, Lb/a/a/l$a;->ia:Z

    if-eqz v1, :cond_3

    .line 7
    iget-boolean v1, v0, Lb/a/a/l$a;->Ba:Z

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Le/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;

    .line 9
    invoke-virtual {v0}, Lb/a/a/l$a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 10
    iget v2, v0, Lb/a/a/l$a;->t:I

    invoke-virtual {v1, v2}, Le/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->setTint(I)V

    .line 11
    iget-object v2, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v2, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;

    .line 14
    invoke-virtual {v0}, Lb/a/a/l$a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 15
    iget v2, v0, Lb/a/a/l$a;->t:I

    invoke-virtual {v1, v2}, Le/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->setTint(I)V

    .line 16
    iget-object v2, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v2, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 18
    :cond_3
    new-instance v1, Le/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;

    invoke-virtual {v0}, Lb/a/a/l$a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 19
    iget v2, v0, Lb/a/a/l$a;->t:I

    invoke-virtual {v1, v2}, Le/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setTint(I)V

    .line 20
    iget-object v2, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v2, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 22
    :cond_4
    iget v2, v0, Lb/a/a/l$a;->t:I

    invoke-static {v1, v2}, Lcom/a/materialdialogs/internal/g;->a(Landroid/widget/ProgressBar;I)V

    .line 23
    :goto_0
    iget-boolean v1, v0, Lb/a/a/l$a;->ia:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lb/a/a/l$a;->Ba:Z

    if-eqz v1, :cond_a

    .line 24
    :cond_5
    iget-object v1, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    iget-boolean v2, v0, Lb/a/a/l$a;->ia:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lb/a/a/l$a;->Ba:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 25
    iget-object v1, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 26
    iget-object v1, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    iget v2, v0, Lb/a/a/l$a;->la:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 27
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v2, Lb/a/a/q;->md_label:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/a/a/l;->m:Landroid/widget/TextView;

    .line 28
    iget-object v1, p0, Lb/a/a/l;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 29
    iget v2, v0, Lb/a/a/l$a;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v1, p0, Lb/a/a/l;->m:Landroid/widget/TextView;

    iget-object v2, v0, Lb/a/a/l$a;->T:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v2}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 31
    iget-object v1, p0, Lb/a/a/l;->m:Landroid/widget/TextView;

    iget-object v2, v0, Lb/a/a/l$a;->Aa:Ljava/text/NumberFormat;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_7
    iget-object v1, p0, Lb/a/a/d;->a:Lcom/a/materialdialogs/internal/MDRootLayout;

    sget v2, Lb/a/a/q;->md_minMax:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/a/a/l;->n:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Lb/a/a/l;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 34
    iget v2, v0, Lb/a/a/l$a;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, p0, Lb/a/a/l;->n:Landroid/widget/TextView;

    iget-object v2, v0, Lb/a/a/l$a;->S:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v2}, Lb/a/a/l;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 36
    iget-boolean v1, v0, Lb/a/a/l$a;->ja:Z

    if-eqz v1, :cond_8

    .line 37
    iget-object v1, p0, Lb/a/a/l;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v1, p0, Lb/a/a/l;->n:Landroid/widget/TextView;

    iget-object v2, v0, Lb/a/a/l$a;->za:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget v0, v0, Lb/a/a/l$a;->la:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    .line 42
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 45
    :cond_8
    iget-object v0, p0, Lb/a/a/l;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 46
    :cond_9
    iput-boolean v4, v0, Lb/a/a/l$a;->ja:Z

    .line 47
    :cond_a
    :goto_2
    iget-object p0, p0, Lb/a/a/l;->l:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_b

    .line 48
    invoke-static {p0}, Lb/a/a/e;->a(Landroid/widget/ProgressBar;)V

    :cond_b
    return-void
.end method
