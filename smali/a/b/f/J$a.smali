.class La/b/f/J$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/f/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:La/b/f/S;

.field d:La/b/f/sa;

.field e:La/b/f/J;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;La/b/f/J;La/b/f/sa;La/b/f/S;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/f/J$a;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, La/b/f/J$a;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, La/b/f/J$a;->c:La/b/f/S;

    .line 5
    iput-object p4, p0, La/b/f/J$a;->d:La/b/f/sa;

    .line 6
    iput-object p3, p0, La/b/f/J$a;->e:La/b/f/J;

    return-void
.end method
