.class La/a/a/a/c$b;
.super La/a/a/a/c$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/c$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(La/a/a/a/c$c;La/a/a/a/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/c$c<",
            "TK;TV;>;",
            "La/a/a/a/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, La/a/a/a/c$e;-><init>(La/a/a/a/c$c;La/a/a/a/c$c;)V

    return-void
.end method


# virtual methods
.method a(La/a/a/a/c$c;)La/a/a/a/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/c$c<",
            "TK;TV;>;)",
            "La/a/a/a/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, La/a/a/a/c$c;->b:La/a/a/a/c$c;

    return-object p1
.end method
