.class Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x8

    const v1, 0x7f080055

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    .line 2
    :pswitch_1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->i()V

    .line 3
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewPager:Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;->setCurrentItem(I)V

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->q()V

    return v3

    .line 7
    :pswitch_2
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->i()V

    .line 8
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    move-result-object p1

    iget-boolean p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->m:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    move-result-object p1

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->k:Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/l;->a()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->e(Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;)Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/o;->onResume()V

    :cond_1
    return v3

    .line 14
    :pswitch_3
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->a(Z)V

    .line 15
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/h/s/z;->n()V

    .line 16
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->i()V

    .line 17
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewPager:Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    invoke-virtual {p1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;->setCurrentItem(I)V

    .line 19
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->q()V

    return v3

    .line 21
    :pswitch_4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->a(Z)V

    .line 22
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/m;->m()V

    .line 23
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->k()Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/j/l_/d;->i()V

    .line 24
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewPager:Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;->setCurrentItem(I)V

    .line 26
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->q()V

    return v3

    .line 28
    :pswitch_5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mContainerFragment:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->mViewPager:Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;

    invoke-virtual {p1, v3}, Lcom/barcodescanner/codegeneratorx88/reader/d/c/c;->setCurrentItem(I)V

    .line 30
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/m/m;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/m/z;->q()V

    return v3

    :pswitch_data_0
    .packed-switch 0x7f080106
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
