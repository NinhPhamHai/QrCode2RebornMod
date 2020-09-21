.class public Lb/d/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/h$a;
    }
.end annotation


# static fields
.field private static final a:Lb/d/a/i;

.field private static final b:Lb/d/a/i;

.field private static c:[Ljava/lang/Class;

.field private static d:[Ljava/lang/Class;

.field private static e:[Ljava/lang/Class;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field h:Ljava/lang/String;

.field protected i:Lb/d/b/a;

.field j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field l:Ljava/lang/Class;

.field m:Lb/d/a/f;

.field final n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final o:[Ljava/lang/Object;

.field private p:Lb/d/a/i;

.field private q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lb/d/a/d;

    invoke-direct {v0}, Lb/d/a/d;-><init>()V

    sput-object v0, Lb/d/a/h;->a:Lb/d/a/i;

    .line 2
    new-instance v0, Lb/d/a/b;

    invoke-direct {v0}, Lb/d/a/b;-><init>()V

    sput-object v0, Lb/d/a/h;->b:Lb/d/a/i;

    const/4 v0, 0x6

    .line 3
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v7, Ljava/lang/Double;

    const/4 v8, 0x4

    aput-object v7, v1, v8

    const-class v7, Ljava/lang/Integer;

    const/4 v9, 0x5

    aput-object v7, v1, v9

    sput-object v1, Lb/d/a/h;->c:[Ljava/lang/Class;

    .line 4
    new-array v1, v0, [Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v7, Ljava/lang/Float;

    aput-object v7, v1, v8

    const-class v7, Ljava/lang/Double;

    aput-object v7, v1, v9

    sput-object v1, Lb/d/a/h;->d:[Ljava/lang/Class;

    .line 5
    new-array v0, v0, [Ljava/lang/Class;

    aput-object v2, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v8

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v9

    sput-object v0, Lb/d/a/h;->e:[Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/d/a/h;->f:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/d/a/h;->g:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/d/a/h;->j:Ljava/lang/reflect/Method;

    .line 4
    iput-object v0, p0, Lb/d/a/h;->k:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lb/d/a/h;->m:Lb/d/a/f;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lb/d/a/h;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lb/d/a/h;->o:[Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lb/d/a/h;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lb/d/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/d/a/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[F)Lb/d/a/h;
    .locals 1

    .line 1
    new-instance v0, Lb/d/a/h$a;

    invoke-direct {v0, p0, p1}, Lb/d/a/h$a;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lb/d/a/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method a(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lb/d/a/h;->m:Lb/d/a/f;

    invoke-virtual {v0, p1}, Lb/d/a/f;->a(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/h;->q:Ljava/lang/Object;

    return-void
.end method

.method public varargs a([F)V
    .locals 1

    .line 2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lb/d/a/h;->l:Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Lb/d/a/f;->a([F)Lb/d/a/f;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/h;->m:Lb/d/a/f;

    return-void
.end method

.method b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/d/a/h;->p:Lb/d/a/i;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lb/d/a/h;->l:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Lb/d/a/h;->a:Lb/d/a/i;

    goto :goto_0

    :cond_0
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Lb/d/a/h;->b:Lb/d/a/i;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lb/d/a/h;->p:Lb/d/a/i;

    .line 3
    :cond_2
    iget-object v0, p0, Lb/d/a/h;->p:Lb/d/a/i;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lb/d/a/h;->m:Lb/d/a/f;

    invoke-virtual {v1, v0}, Lb/d/a/f;->a(Lb/d/a/i;)V

    :cond_3
    return-void
.end method

.method public clone()Lb/d/a/h;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/a/h;

    .line 3
    iget-object v1, p0, Lb/d/a/h;->h:Ljava/lang/String;

    iput-object v1, v0, Lb/d/a/h;->h:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lb/d/a/h;->i:Lb/d/b/a;

    iput-object v1, v0, Lb/d/a/h;->i:Lb/d/b/a;

    .line 5
    iget-object v1, p0, Lb/d/a/h;->m:Lb/d/a/f;

    invoke-virtual {v1}, Lb/d/a/f;->clone()Lb/d/a/f;

    move-result-object v1

    iput-object v1, v0, Lb/d/a/h;->m:Lb/d/a/f;

    .line 6
    iget-object v1, p0, Lb/d/a/h;->p:Lb/d/a/i;

    iput-object v1, v0, Lb/d/a/h;->p:Lb/d/a/i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/h;->clone()Lb/d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/d/a/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/d/a/h;->m:Lb/d/a/f;

    invoke-virtual {v1}, Lb/d/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
