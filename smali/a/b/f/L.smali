.class La/b/f/L;
.super La/b/f/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/f/M$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/util/ArrayMap;

.field final synthetic b:La/b/f/M$a;


# direct methods
.method constructor <init>(La/b/f/M$a;Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/f/L;->b:La/b/f/M$a;

    iput-object p2, p0, La/b/f/L;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, La/b/f/K;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La/b/f/J;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/f/L;->a:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, La/b/f/L;->b:La/b/f/M$a;

    iget-object v1, v1, La/b/f/M$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
