.class Lb/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/l;


# direct methods
.method constructor <init>(Lb/a/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/j;->a:Lb/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 2
    iget-object p3, p0, Lb/a/a/j;->a:Lb/a/a/l;

    iget-object p3, p3, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p3, p3, Lb/a/a/l$a;->pa:Z

    const/4 p4, 0x0

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x1

    const/4 p4, 0x1

    .line 3
    :cond_0
    iget-object p3, p0, Lb/a/a/j;->a:Lb/a/a/l;

    sget-object v0, Lb/a/a/c;->a:Lb/a/a/c;

    invoke-virtual {p3, v0}, Lb/a/a/l;->a(Lb/a/a/c;)Lcom/a/materialdialogs/internal/MDButton;

    move-result-object p3

    xor-int/lit8 v0, p4, 0x1

    .line 4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    :cond_1
    iget-object p3, p0, Lb/a/a/j;->a:Lb/a/a/l;

    invoke-virtual {p3, p2, p4}, Lb/a/a/l;->a(IZ)V

    .line 6
    iget-object p2, p0, Lb/a/a/j;->a:Lb/a/a/l;

    iget-object p3, p2, Lb/a/a/l;->c:Lb/a/a/l$a;

    iget-boolean p4, p3, Lb/a/a/l$a;->ra:Z

    if-eqz p4, :cond_2

    .line 7
    iget-object p3, p3, Lb/a/a/l$a;->oa:Lb/a/a/l$d;

    invoke-interface {p3, p2, p1}, Lb/a/a/l$d;->a(Lb/a/a/l;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
