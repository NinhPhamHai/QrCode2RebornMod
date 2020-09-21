.class public La/b/c/a/k;
.super La/b/c/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/c/a/k$b;,
        La/b/c/a/k$a;,
        La/b/c/a/k$d;,
        La/b/c/a/k$c;,
        La/b/c/a/k$e;,
        La/b/c/a/k$f;,
        La/b/c/a/k$g;
    }
.end annotation


# static fields
.field static final b:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:La/b/c/a/k$f;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, La/b/c/a/k;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, La/b/c/a/j;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/c/a/k;->g:Z

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, La/b/c/a/k;->i:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, La/b/c/a/k;->j:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    .line 6
    new-instance v0, La/b/c/a/k$f;

    invoke-direct {v0}, La/b/c/a/k$f;-><init>()V

    iput-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    return-void
.end method

.method constructor <init>(La/b/c/a/k$f;)V
    .locals 2

    .line 7
    invoke-direct {p0}, La/b/c/a/j;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, La/b/c/a/k;->g:Z

    const/16 v0, 0x9

    .line 9
    new-array v0, v0, [F

    iput-object v0, p0, La/b/c/a/k;->i:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, La/b/c/a/k;->j:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 13
    iget-object v0, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, La/b/c/a/k;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .locals 2

    .line 16
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)La/b/c/a/k;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 5
    new-instance v0, La/b/c/a/k;

    invoke-direct {v0}, La/b/c/a/k;-><init>()V

    .line 6
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    new-instance p0, La/b/c/a/k$g;

    iget-object p1, v0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, La/b/c/a/k$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, La/b/c/a/k;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 11
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 12
    invoke-static {p0, p1, v2, p2}, La/b/c/a/k;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)La/b/c/a/k;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 14
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 15
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    return-object p1

    .line 17
    :pswitch_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    .line 18
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    return-object p1

    .line 19
    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 20
    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 21
    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 22
    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 23
    :cond_3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11

    .line 49
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 50
    iget-object v1, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    .line 51
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 52
    iget-object v3, v1, La/b/c/a/k$e;->i:La/b/c/a/k$c;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 54
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_0
    const-string v7, "path"

    if-eq v3, v5, :cond_8

    .line 55
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v4, :cond_0

    if-eq v3, v9, :cond_8

    :cond_0
    const/4 v8, 0x2

    const-string v10, "group"

    if-ne v3, v8, :cond_6

    .line 56
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/b/c/a/k$c;

    .line 58
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    new-instance v3, La/b/c/a/k$b;

    invoke-direct {v3}, La/b/c/a/k$b;-><init>()V

    .line 60
    invoke-virtual {v3, p1, p3, p4, p2}, La/b/c/a/k$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 61
    iget-object v6, v8, La/b/c/a/k$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v3}, La/b/c/a/k$d;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 63
    iget-object v6, v1, La/b/c/a/k$e;->p:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, La/b/c/a/k$d;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    .line 64
    iget v7, v0, La/b/c/a/k$f;->a:I

    iget v3, v3, La/b/c/a/k$d;->c:I

    or-int/2addr v3, v7

    iput v3, v0, La/b/c/a/k$f;->a:I

    goto :goto_1

    :cond_2
    const-string v7, "clip-path"

    .line 65
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    new-instance v3, La/b/c/a/k$a;

    invoke-direct {v3}, La/b/c/a/k$a;-><init>()V

    .line 67
    invoke-virtual {v3, p1, p3, p4, p2}, La/b/c/a/k$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 68
    iget-object v7, v8, La/b/c/a/k$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v3}, La/b/c/a/k$d;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 70
    iget-object v7, v1, La/b/c/a/k$e;->p:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, La/b/c/a/k$d;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    iget v7, v0, La/b/c/a/k$f;->a:I

    iget v3, v3, La/b/c/a/k$d;->c:I

    or-int/2addr v3, v7

    iput v3, v0, La/b/c/a/k$f;->a:I

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 73
    new-instance v3, La/b/c/a/k$c;

    invoke-direct {v3}, La/b/c/a/k$c;-><init>()V

    .line 74
    invoke-virtual {v3, p1, p3, p4, p2}, La/b/c/a/k$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 75
    iget-object v7, v8, La/b/c/a/k$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v3}, La/b/c/a/k$c;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 78
    iget-object v7, v1, La/b/c/a/k$e;->p:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, La/b/c/a/k$c;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_5
    iget v7, v0, La/b/c/a/k$f;->a:I

    iget v3, v3, La/b/c/a/k$c;->k:I

    or-int/2addr v3, v7

    iput v3, v0, La/b/c/a/k$f;->a:I

    goto :goto_1

    :cond_6
    if-ne v3, v9, :cond_7

    .line 80
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 82
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 83
    :cond_7
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_8
    if-eqz v6, :cond_a

    .line 84
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_9

    const-string p2, " or "

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_9
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "no "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " defined"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 24
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 25
    iget-object v1, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    .line 26
    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 27
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, La/b/c/a/k;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    iput-object v2, v0, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v2, 0x5

    .line 30
    iget-boolean v3, v0, La/b/c/a/k$f;->e:Z

    const-string v4, "autoMirrored"

    invoke-static {p1, p2, v4, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, La/b/c/a/k$f;->e:Z

    const/4 v0, 0x7

    .line 31
    iget v2, v1, La/b/c/a/k$e;->l:F

    const-string v3, "viewportWidth"

    invoke-static {p1, p2, v3, v0, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, La/b/c/a/k$e;->l:F

    const/16 v0, 0x8

    .line 32
    iget v2, v1, La/b/c/a/k$e;->m:F

    const-string v3, "viewportHeight"

    invoke-static {p1, p2, v3, v0, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, La/b/c/a/k$e;->m:F

    .line 33
    iget v0, v1, La/b/c/a/k$e;->l:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_5

    .line 34
    iget v0, v1, La/b/c/a/k$e;->m:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x3

    .line 35
    iget v3, v1, La/b/c/a/k$e;->j:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, La/b/c/a/k$e;->j:F

    const/4 v0, 0x2

    .line 36
    iget v3, v1, La/b/c/a/k$e;->k:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, La/b/c/a/k$e;->k:F

    .line 37
    iget v0, v1, La/b/c/a/k$e;->j:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_3

    .line 38
    iget v0, v1, La/b/c/a/k$e;->k:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x4

    .line 39
    invoke-virtual {v1}, La/b/c/a/k$e;->getAlpha()F

    move-result v2

    const-string v3, "alpha"

    .line 40
    invoke-static {p1, p2, v3, v0, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    .line 41
    invoke-virtual {v1, p2}, La/b/c/a/k$e;->setAlpha(F)V

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    iput-object p1, v1, La/b/c/a/k$e;->o:Ljava/lang/String;

    .line 44
    iget-object p2, v1, La/b/c/a/k$e;->p:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 45
    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_4
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_5
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a()Z
    .locals 3

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 91
    invoke-virtual {p0}, La/b/c/a/k;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)La/b/c/a/k;
    .locals 1

    .line 1
    new-instance v0, La/b/c/a/k;

    invoke-direct {v0}, La/b/c/a/k;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, La/b/c/a/k;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, La/b/c/a/k;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 3
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v0, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    iget-object v0, v0, La/b/c/a/k$e;->p:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, La/b/c/a/k;->g:Z

    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/b/c/a/j;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .line 1
    invoke-super {p0}, La/b/c/a/j;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, La/b/c/a/k;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_2
    iget-object v1, p0, La/b/c/a/k;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, La/b/c/a/k;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, La/b/c/a/k;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, La/b/c/a/k;->i:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, La/b/c/a/k;->i:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, La/b/c/a/k;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v5, p0, La/b/c/a/k;->i:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    :cond_4
    iget-object v4, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v5, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-direct {p0}, La/b/c/a/k;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 19
    iget-object v5, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    .line 20
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 21
    :cond_6
    iget-object v5, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 22
    iget-object v2, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {v2, v1, v3}, La/b/c/a/k$f;->b(II)V

    .line 23
    iget-boolean v2, p0, La/b/c/a/k;->g:Z

    if-nez v2, :cond_7

    .line 24
    iget-object v2, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {v2, v1, v3}, La/b/c/a/k$f;->c(II)V

    goto :goto_0

    .line 25
    :cond_7
    iget-object v2, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {v2}, La/b/c/a/k$f;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 26
    iget-object v2, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {v2, v1, v3}, La/b/c/a/k$f;->c(II)V

    .line 27
    iget-object v1, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {v1}, La/b/c/a/k$f;->c()V

    .line 28
    :cond_8
    :goto_0
    iget-object v1, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v2, p0, La/b/c/a/k;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, La/b/c/a/k$f;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v0, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    invoke-virtual {v0}, La/b/c/a/k$e;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {v1}, La/b/c/a/k$f;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    invoke-super {p0}, La/b/c/a/j;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 2
    new-instance v1, La/b/c/a/k$g;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-direct {v1, v0}, La/b/c/a/k$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-virtual {p0}, La/b/c/a/k;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, La/b/c/a/k$f;->a:I

    .line 4
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    return-object v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-super {p0}, La/b/c/a/j;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v0, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    iget v0, v0, La/b/c/a/k$e;->k:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v0, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    iget v0, v0, La/b/c/a/k$e;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, La/b/c/a/j;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 1
    invoke-super {p0}, La/b/c/a/j;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/b/c/a/j;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .line 1
    invoke-super {p0}, La/b/c/a/j;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 1
    invoke-super {p0}, La/b/c/a/j;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, La/b/c/a/k;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 4
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 7
    new-instance v1, La/b/c/a/k$e;

    invoke-direct {v1}, La/b/c/a/k$e;-><init>()V

    .line 8
    iput-object v1, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    .line 9
    sget-object v1, La/b/c/a/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1, p2}, La/b/c/a/k;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, La/b/c/a/k;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, La/b/c/a/k$f;->a:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, La/b/c/a/k$f;->k:Z

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, La/b/c/a/k;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 15
    iget-object p1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    iget-object p3, v0, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, La/b/c/a/k;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-boolean v0, v0, La/b/c/a/k$f;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    if-eqz v0, :cond_1

    iget-object v0, v0, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, La/b/c/a/j;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, La/b/c/a/k;->f:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 4
    new-instance v0, La/b/c/a/k$f;

    iget-object v1, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    invoke-direct {v0, v1}, La/b/c/a/k$f;-><init>(La/b/c/a/k$f;)V

    iput-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La/b/c/a/k;->f:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 4
    iget-object v0, p1, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object p1, p1, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1, v0, p1}, La/b/c/a/k;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, La/b/c/a/k;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v0, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    invoke-virtual {v0}, La/b/c/a/k$e;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iget-object v0, v0, La/b/c/a/k$f;->b:La/b/c/a/k$e;

    invoke-virtual {v0, p1}, La/b/c/a/k$e;->setRootAlpha(I)V

    .line 5
    invoke-virtual {p0}, La/b/c/a/k;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    iput-boolean p1, v0, La/b/c/a/k$f;->e:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/b/c/a/j;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La/b/c/a/j;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, La/b/c/a/k;->e:Landroid/graphics/ColorFilter;

    .line 5
    invoke-virtual {p0}, La/b/c/a/k;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/b/c/a/j;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La/b/c/a/j;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, La/b/c/a/j;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/b/c/a/j;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/c/a/k;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 4
    iget-object v1, v0, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, La/b/c/a/k;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, La/b/c/a/k;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, La/b/c/a/k;->c:La/b/c/a/k$f;

    .line 4
    iget-object v1, v0, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, La/b/c/a/k$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, La/b/c/a/k$f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, La/b/c/a/k;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, La/b/c/a/k;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, La/b/c/a/k;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/c/a/j;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
