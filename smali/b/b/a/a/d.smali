.class public Lb/b/a/a/d;
.super Lb/b/a/a/c$b;
.source "SourceFile"


# instance fields
.field private final j:Lb/b/a/a/f;


# direct methods
.method public constructor <init>(ZLb/b/a/a/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/b/a/a/c$b;-><init>()V

    .line 2
    iput-boolean p1, p0, Lb/b/a/a/c$b;->a:Z

    .line 3
    iput-object p2, p0, Lb/b/a/a/d;->j:Lb/b/a/a/f;

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    .line 6
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lb/b/a/a/c$b;->b:I

    const-wide/16 v1, 0x1c

    .line 7
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lb/b/a/a/c$b;->c:J

    const-wide/16 v1, 0x20

    .line 8
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lb/b/a/a/c$b;->d:J

    const-wide/16 v1, 0x2a

    .line 9
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lb/b/a/a/c$b;->e:I

    const-wide/16 v1, 0x2c

    .line 10
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lb/b/a/a/c$b;->f:I

    const-wide/16 v1, 0x2e

    .line 11
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lb/b/a/a/c$b;->g:I

    const-wide/16 v1, 0x30

    .line 12
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lb/b/a/a/c$b;->h:I

    const-wide/16 v1, 0x32

    .line 13
    invoke-virtual {p2, v0, v1, v2}, Lb/b/a/a/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lb/b/a/a/c$b;->i:I

    return-void
.end method


# virtual methods
.method public a(JI)Lb/b/a/a/c$a;
    .locals 7

    .line 3
    new-instance v6, Lb/b/a/a/a;

    iget-object v1, p0, Lb/b/a/a/d;->j:Lb/b/a/a/f;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lb/b/a/a/a;-><init>(Lb/b/a/a/f;Lb/b/a/a/c$b;JI)V

    return-object v6
.end method

.method public a(J)Lb/b/a/a/c$c;
    .locals 2

    .line 2
    new-instance v0, Lb/b/a/a/g;

    iget-object v1, p0, Lb/b/a/a/d;->j:Lb/b/a/a/f;

    invoke-direct {v0, v1, p0, p1, p2}, Lb/b/a/a/g;-><init>(Lb/b/a/a/f;Lb/b/a/a/c$b;J)V

    return-object v0
.end method

.method public a(I)Lb/b/a/a/c$d;
    .locals 2

    .line 1
    new-instance v0, Lb/b/a/a/i;

    iget-object v1, p0, Lb/b/a/a/d;->j:Lb/b/a/a/f;

    invoke-direct {v0, v1, p0, p1}, Lb/b/a/a/i;-><init>(Lb/b/a/a/f;Lb/b/a/a/c$b;I)V

    return-object v0
.end method
