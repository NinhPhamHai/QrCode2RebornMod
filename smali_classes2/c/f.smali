.class public final Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/h;
.implements Lc/g;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:[B


# instance fields
.field b:Lc/w;

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc/f;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 82
    invoke-virtual/range {v0 .. v5}, Lc/f;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 15

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_8

    cmp-long v3, p4, p2

    if-ltz v3, :cond_8

    .line 83
    iget-wide v3, v0, Lc/f;->c:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p4

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, p2, v3

    if-nez v7, :cond_1

    return-wide v5

    .line 84
    :cond_1
    iget-object v7, v0, Lc/f;->b:Lc/w;

    if-nez v7, :cond_2

    return-wide v5

    .line 85
    :cond_2
    iget-wide v8, v0, Lc/f;->c:J

    sub-long v10, v8, p2

    cmp-long v12, v10, p2

    if-gez v12, :cond_3

    :goto_1
    cmp-long v1, v8, p2

    if-lez v1, :cond_4

    .line 86
    iget-object v7, v7, Lc/w;->g:Lc/w;

    .line 87
    iget v1, v7, Lc/w;->c:I

    iget v2, v7, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v8, v1

    goto :goto_1

    :cond_3
    :goto_2
    move-wide v8, v1

    .line 88
    iget v1, v7, Lc/w;->c:I

    iget v2, v7, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    cmp-long v10, v1, p2

    if-gez v10, :cond_4

    .line 89
    iget-object v7, v7, Lc/w;->f:Lc/w;

    goto :goto_2

    :cond_4
    move-wide/from16 v1, p2

    :goto_3
    cmp-long v10, v8, v3

    if-gez v10, :cond_7

    .line 90
    iget-object v10, v7, Lc/w;->a:[B

    .line 91
    iget v11, v7, Lc/w;->c:I

    int-to-long v11, v11

    iget v13, v7, Lc/w;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v3

    sub-long/2addr v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    .line 92
    iget v11, v7, Lc/w;->b:I

    int-to-long v13, v11

    add-long/2addr v13, v1

    sub-long/2addr v13, v8

    long-to-int v1, v13

    :goto_4
    if-ge v1, v12, :cond_6

    .line 93
    aget-byte v2, v10, v1

    move/from16 v11, p1

    if-ne v2, v11, :cond_5

    .line 94
    iget v2, v7, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    return-wide v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move/from16 v11, p1

    .line 95
    iget v1, v7, Lc/w;->c:I

    iget v2, v7, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    .line 96
    iget-object v7, v7, Lc/w;->f:Lc/w;

    move-wide v8, v1

    goto :goto_3

    :cond_7
    return-wide v5

    .line 97
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lc/f;->c:J

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public a(Lc/A;)J
    .locals 7

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 80
    invoke-interface {p1, p0, v2, v3}, Lc/A;->read(Lc/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a()Lc/f;
    .locals 0

    return-object p0
.end method

.method public a(Lc/f;JJ)Lc/f;
    .locals 8

    if-eqz p1, :cond_4

    .line 3
    iget-wide v0, p0, Lc/f;->c:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lc/D;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-wide v2, p1, Lc/f;->c:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lc/f;->c:J

    .line 5
    iget-object v2, p0, Lc/f;->b:Lc/w;

    .line 6
    :goto_0
    iget v3, v2, Lc/w;->c:I

    iget v4, v2, Lc/w;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lc/w;->f:Lc/w;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 7
    new-instance v3, Lc/w;

    invoke-direct {v3, v2}, Lc/w;-><init>(Lc/w;)V

    .line 8
    iget v4, v3, Lc/w;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Lc/w;->b:I

    .line 9
    iget p2, v3, Lc/w;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lc/w;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lc/w;->c:I

    .line 10
    iget-object p2, p1, Lc/f;->b:Lc/w;

    if-nez p2, :cond_2

    .line 11
    iput-object v3, v3, Lc/w;->g:Lc/w;

    iput-object v3, v3, Lc/w;->f:Lc/w;

    iput-object v3, p1, Lc/f;->b:Lc/w;

    goto :goto_2

    .line 12
    :cond_2
    iget-object p2, p2, Lc/w;->g:Lc/w;

    invoke-virtual {p2, v3}, Lc/w;->a(Lc/w;)Lc/w;

    .line 13
    :goto_2
    iget p2, v3, Lc/w;->c:I

    iget p3, v3, Lc/w;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 14
    iget-object v2, v2, Lc/w;->f:Lc/w;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    return-object p0

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public a(Lc/i;)Lc/f;
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1, p0}, Lc/i;->a(Lc/f;)V

    return-object p0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lc/f;
    .locals 2

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lc/f;->a(Ljava/lang/String;II)Lc/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;II)Lc/f;
    .locals 7

    if-eqz p1, :cond_d

    if-ltz p2, :cond_c

    if-lt p3, p2, :cond_b

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    :goto_0
    if-ge p2, p3, :cond_9

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    .line 43
    invoke-virtual {p0, v2}, Lc/f;->b(I)Lc/w;

    move-result-object v2

    .line 44
    iget-object v3, v2, Lc/w;->a:[B

    .line 45
    iget v4, v2, Lc/w;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 46
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 47
    aput-byte v0, v3, p2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 48
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 49
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v4, v6

    .line 50
    iget p2, v2, Lc/w;->c:I

    sub-int/2addr v4, p2

    add-int/2addr p2, v4

    .line 51
    iput p2, v2, Lc/w;->c:I

    .line 52
    iget-wide v0, p0, Lc/f;->c:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/f;->c:J

    move p2, v6

    goto :goto_0

    :cond_2
    const/16 v2, 0x800

    if-ge v0, v2, :cond_3

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 53
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 54
    invoke-virtual {p0, v0}, Lc/f;->writeByte(I)Lc/f;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_8

    const v2, 0xdfff

    if-le v0, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_5

    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    const v6, 0xdbff

    if-gt v0, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v2, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 56
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 57
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 58
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 59
    invoke-virtual {p0, v0}, Lc/f;->writeByte(I)Lc/f;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 60
    :cond_7
    :goto_5
    invoke-virtual {p0, v3}, Lc/f;->writeByte(I)Lc/f;

    move p2, v4

    goto/16 :goto_0

    :cond_8
    :goto_6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 61
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 62
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 63
    invoke-virtual {p0, v0}, Lc/f;->writeByte(I)Lc/f;

    goto :goto_3

    :cond_9
    return-object p0

    .line 64
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 66
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc/f;
    .locals 1

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    if-lt p3, p2, :cond_3

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_2

    if-eqz p4, :cond_1

    .line 71
    sget-object v0, Lc/D;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lc/f;->a(Ljava/lang/String;II)Lc/f;

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 73
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lc/f;->write([BII)Lc/f;

    return-object p0

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc/f;
    .locals 2

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lc/f;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc/f;

    return-object p0
.end method

.method public bridge synthetic a(Lc/i;)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/f;->a(Lc/i;)Lc/f;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Lc/g;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    return-object p0
.end method

.method public a(I)Lc/i;
    .locals 1

    if-nez p1, :cond_0

    .line 103
    sget-object p1, Lc/i;->b:Lc/i;

    return-object p1

    .line 104
    :cond_0
    new-instance v0, Lc/y;

    invoke-direct {v0, p0, p1}, Lc/y;-><init>(Lc/f;I)V

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .line 22
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lc/D;->a(JJJ)V

    if-eqz p3, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lc/f;->b:Lc/w;

    .line 24
    iget v1, v0, Lc/w;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lc/w;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc/f;->a(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 26
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lc/w;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 27
    iget p3, v0, Lc/w;->b:I

    int-to-long v3, p3

    add-long/2addr v3, p1

    long-to-int p3, v3

    iput p3, v0, Lc/w;->b:I

    .line 28
    iget-wide v3, p0, Lc/f;->c:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lc/f;->c:J

    .line 29
    iget p1, v0, Lc/w;->b:I

    iget p2, v0, Lc/w;->c:I

    if-ne p1, p2, :cond_2

    .line 30
    invoke-virtual {v0}, Lc/w;->b()Lc/w;

    move-result-object p1

    iput-object p1, p0, Lc/f;->b:Lc/w;

    .line 31
    invoke-static {v0}, Lc/x;->a(Lc/w;)V

    :cond_2
    return-object v2

    .line 32
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 20
    :try_start_0
    iget-wide v0, p0, Lc/f;->c:J

    invoke-virtual {p0, v0, v1, p1}, Lc/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(Lc/f;J)V
    .locals 3

    .line 16
    iget-wide v0, p0, Lc/f;->c:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 17
    invoke-virtual {p1, p0, p2, p3}, Lc/f;->write(Lc/f;J)V

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lc/f;->write(Lc/f;J)V

    .line 19
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a(JLc/i;)Z
    .locals 6

    .line 99
    invoke-virtual {p3}, Lc/i;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lc/f;->a(JLc/i;II)Z

    move-result p1

    return p1
.end method

.method public a(JLc/i;II)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 100
    iget-wide v1, p0, Lc/f;->c:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 101
    invoke-virtual {p3}, Lc/i;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 102
    invoke-virtual {p0, v2, v3}, Lc/f;->f(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lc/i;->a(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public a(J)[B
    .locals 6

    .line 34
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lc/D;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 35
    new-array p1, p2, [B

    .line 36
    invoke-virtual {p0, p1}, Lc/f;->readFully([B)V

    return-object p1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lc/g;
    .locals 0

    return-object p0
.end method

.method b(I)Lc/w;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 2
    iget-object v1, p0, Lc/f;->b:Lc/w;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lc/x;->a()Lc/w;

    move-result-object p1

    iput-object p1, p0, Lc/f;->b:Lc/w;

    .line 4
    iget-object p1, p0, Lc/f;->b:Lc/w;

    iput-object p1, p1, Lc/w;->g:Lc/w;

    iput-object p1, p1, Lc/w;->f:Lc/w;

    return-object p1

    .line 5
    :cond_0
    iget-object v1, v1, Lc/w;->g:Lc/w;

    .line 6
    iget v2, v1, Lc/w;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lc/w;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lc/x;->a()Lc/w;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/w;->a(Lc/w;)Lc/w;

    :goto_1
    return-object p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public c()Lc/f;
    .locals 0

    return-object p0
.end method

.method public c(I)Lc/f;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 4
    invoke-virtual {p0, v1}, Lc/f;->writeByte(I)Lc/f;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Lc/f;->writeByte(I)Lc/f;

    goto :goto_0

    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 7
    invoke-virtual {p0, v1}, Lc/f;->writeByte(I)Lc/f;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lc/f;->writeByte(I)Lc/f;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    goto :goto_0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 10
    invoke-virtual {p0, v1}, Lc/f;->writeByte(I)Lc/f;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 11
    invoke-virtual {p0, v1}, Lc/f;->writeByte(I)Lc/f;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 12
    invoke-virtual {p0, v1}, Lc/f;->writeByte(I)Lc/f;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    :goto_0
    return-object p0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(J)Lc/f;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 16
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 17
    invoke-virtual {p0, p1}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    return-object p0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_a

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_6

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_4

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_b

    const/16 v3, 0x9

    goto :goto_0

    :cond_b
    const/16 v3, 0xa

    goto :goto_0

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d

    const/16 v3, 0xb

    goto :goto_0

    :cond_d
    const/16 v3, 0xc

    goto :goto_0

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_f

    const/16 v3, 0xd

    goto :goto_0

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_10

    const/16 v3, 0xe

    goto :goto_0

    :cond_10
    const/16 v3, 0xf

    goto :goto_0

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_12

    const/16 v3, 0x10

    goto :goto_0

    :cond_12
    const/16 v3, 0x11

    goto :goto_0

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_14

    const/16 v3, 0x12

    goto :goto_0

    :cond_14
    const/16 v3, 0x13

    :goto_0
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    .line 18
    :cond_15
    invoke-virtual {p0, v3}, Lc/f;->b(I)Lc/w;

    move-result-object v4

    .line 19
    iget-object v5, v4, Lc/w;->a:[B

    .line 20
    iget v8, v4, Lc/w;->c:I

    add-int/2addr v8, v3

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 21
    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    .line 22
    sget-object v9, Lc/f;->a:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 23
    div-long/2addr p1, v6

    goto :goto_1

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 24
    aput-byte p1, v5, v8

    .line 25
    :cond_17
    iget p1, v4, Lc/w;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Lc/w;->c:I

    .line 26
    iget-wide p1, p0, Lc/f;->c:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lc/f;->c:J

    return-object p0
.end method

.method public bridge synthetic c()Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/f;->c()Lc/f;

    return-object p0
.end method

.method public bridge synthetic c(J)Lc/g;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/f;->c(J)Lc/f;

    return-object p0
.end method

.method public clone()Lc/f;
    .locals 6

    .line 2
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    .line 3
    iget-wide v1, p0, Lc/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lc/w;

    iget-object v2, p0, Lc/f;->b:Lc/w;

    invoke-direct {v1, v2}, Lc/w;-><init>(Lc/w;)V

    iput-object v1, v0, Lc/f;->b:Lc/w;

    .line 5
    iget-object v1, v0, Lc/f;->b:Lc/w;

    iput-object v1, v1, Lc/w;->g:Lc/w;

    iput-object v1, v1, Lc/w;->f:Lc/w;

    .line 6
    iget-object v1, p0, Lc/f;->b:Lc/w;

    :goto_0
    iget-object v1, v1, Lc/w;->f:Lc/w;

    iget-object v2, p0, Lc/f;->b:Lc/w;

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v2, v0, Lc/f;->b:Lc/w;

    iget-object v2, v2, Lc/w;->g:Lc/w;

    new-instance v3, Lc/w;

    invoke-direct {v3, v1}, Lc/w;-><init>(Lc/w;)V

    invoke-virtual {v2, v3}, Lc/w;->a(Lc/w;)Lc/w;

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v1, p0, Lc/f;->c:J

    iput-wide v1, v0, Lc/f;->c:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f;->clone()Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(J)Lc/i;
    .locals 1

    .line 1
    new-instance v0, Lc/i;

    invoke-virtual {p0, p1, p2}, Lc/f;->a(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lc/i;-><init>([B)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-virtual {p0, v0, v1}, Lc/f;->i(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lc/f;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 3
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lc/f;->b(I)Lc/w;

    move-result-object v2

    .line 6
    iget-object v3, v2, Lc/w;->a:[B

    .line 7
    iget v4, v2, Lc/w;->c:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-lt v5, v4, :cond_1

    .line 8
    sget-object v6, Lc/f;->a:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 9
    :cond_1
    iget p1, v2, Lc/w;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lc/w;->c:I

    .line 10
    iget-wide p1, p0, Lc/f;->c:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lc/f;->c:J

    return-object p0
.end method

.method public bridge synthetic e(J)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/f;->e(J)Lc/f;

    return-object p0
.end method

.method public e()S
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/f;->readShort()S

    move-result v0

    invoke-static {v0}, Lc/D;->a(S)S

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lc/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/f;

    .line 3
    iget-wide v3, p0, Lc/f;->c:J

    iget-wide v5, p1, Lc/f;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    iget-object v1, p0, Lc/f;->b:Lc/w;

    .line 5
    iget-object p1, p1, Lc/f;->b:Lc/w;

    .line 6
    iget v3, v1, Lc/w;->b:I

    .line 7
    iget v4, p1, Lc/w;->b:I

    .line 8
    :goto_0
    iget-wide v7, p0, Lc/f;->c:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 9
    iget v7, v1, Lc/w;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lc/w;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 10
    iget-object v10, v1, Lc/w;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lc/w;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    .line 11
    :cond_5
    iget v3, v1, Lc/w;->c:I

    if-ne v4, v3, :cond_6

    .line 12
    iget-object v1, v1, Lc/w;->f:Lc/w;

    .line 13
    iget v3, v1, Lc/w;->b:I

    goto :goto_2

    :cond_6
    move v3, v4

    .line 14
    :goto_2
    iget v4, p1, Lc/w;->c:I

    if-ne v9, v4, :cond_7

    .line 15
    iget-object p1, p1, Lc/w;->f:Lc/w;

    .line 16
    iget v4, p1, Lc/w;->b:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f(J)B
    .locals 6

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lc/D;->a(JJJ)V

    .line 2
    iget-object v0, p0, Lc/f;->b:Lc/w;

    .line 3
    :goto_0
    iget v1, v0, Lc/w;->c:I

    iget v2, v0, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    .line 4
    iget-object v0, v0, Lc/w;->a:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1

    :cond_0
    sub-long/2addr p1, v3

    .line 5
    iget-object v0, v0, Lc/w;->f:Lc/w;

    goto :goto_0
.end method

.method public f()[B
    .locals 2

    .line 6
    :try_start_0
    iget-wide v0, p0, Lc/f;->c:J

    invoke-virtual {p0, v0, v1}, Lc/f;->a(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(J)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lc/D;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lc/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()J
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lc/f;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    move-wide v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    :cond_0
    iget-object v10, v0, Lc/f;->b:Lc/w;

    .line 3
    iget-object v11, v10, Lc/w;->a:[B

    .line 4
    iget v12, v10, Lc/w;->b:I

    .line 5
    iget v13, v10, Lc/w;->c:I

    :goto_0
    if-ge v12, v13, :cond_7

    .line 6
    aget-byte v15, v11, v12

    const/16 v14, 0x30

    if-lt v15, v14, :cond_4

    const/16 v1, 0x39

    if-gt v15, v1, :cond_4

    sub-int/2addr v14, v15

    const-wide v1, -0xcccccccccccccccL

    cmp-long v16, v3, v1

    if-ltz v16, :cond_2

    cmp-long v16, v3, v1

    if-nez v16, :cond_1

    int-to-long v1, v14

    cmp-long v16, v1, v8

    if-gez v16, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0xa

    mul-long v3, v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Lc/f;

    invoke-direct {v1}, Lc/f;-><init>()V

    invoke-virtual {v1, v3, v4}, Lc/f;->c(J)Lc/f;

    invoke-virtual {v1, v15}, Lc/f;->writeByte(I)Lc/f;

    if-nez v5, :cond_3

    .line 8
    invoke-virtual {v1}, Lc/f;->readByte()B

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lc/f;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_5

    if-nez v7, :cond_5

    const-wide/16 v1, 0x1

    sub-long/2addr v8, v1

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-ne v12, v13, :cond_8

    .line 12
    invoke-virtual {v10}, Lc/w;->b()Lc/w;

    move-result-object v1

    iput-object v1, v0, Lc/f;->b:Lc/w;

    .line 13
    invoke-static {v10}, Lc/x;->a(Lc/w;)V

    goto :goto_4

    .line 14
    :cond_8
    iput v12, v10, Lc/w;->b:I

    :goto_4
    if-nez v6, :cond_9

    .line 15
    iget-object v1, v0, Lc/f;->b:Lc/w;

    if-nez v1, :cond_0

    .line 16
    :cond_9
    iget-wide v1, v0, Lc/f;->c:J

    int-to-long v6, v7

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lc/f;->c:J

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    .line 17
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method h(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sub-long v2, p1, v0

    .line 18
    invoke-virtual {p0, v2, v3}, Lc/f;->f(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 19
    invoke-virtual {p0, v2, v3}, Lc/f;->g(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 20
    invoke-virtual {p0, v0, v1}, Lc/f;->skip(J)V

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/f;->g(J)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, v0, v1}, Lc/f;->skip(J)V

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/f;->b:Lc/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :cond_1
    iget v2, v0, Lc/w;->b:I

    iget v3, v0, Lc/w;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v4, v0, Lc/w;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, v0, Lc/w;->f:Lc/w;

    .line 5
    iget-object v2, p0, Lc/f;->b:Lc/w;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public i()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f;->readInt()I

    move-result v0

    invoke-static {v0}, Lc/D;->a(I)I

    move-result v0

    return v0
.end method

.method public i(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    add-long v2, p1, v0

    :goto_0
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    .line 2
    invoke-virtual/range {v4 .. v9}, Lc/f;->a(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 3
    invoke-virtual {p0, v4, v5}, Lc/f;->h(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/f;->p()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    sub-long v0, v2, v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lc/f;->f(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2, v3}, Lc/f;->f(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, v2, v3}, Lc/f;->h(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance v6, Lc/f;

    invoke-direct {v6}, Lc/f;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    .line 8
    invoke-virtual {p0}, Lc/f;->p()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lc/f;->a(Lc/f;JJ)Lc/f;

    .line 9
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/f;->p()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v6}, Lc/f;->n()Lc/i;

    move-result-object p1

    invoke-virtual {p1}, Lc/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()J
    .locals 15

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 2
    :cond_0
    iget-object v6, p0, Lc/f;->b:Lc/w;

    .line 3
    iget-object v7, v6, Lc/w;->a:[B

    .line 4
    iget v8, v6, Lc/w;->b:I

    .line 5
    iget v9, v6, Lc/w;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v10, -0x30

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    add-int/lit8 v11, v10, -0x61

    :goto_1
    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x41

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    invoke-virtual {v0, v4, v5}, Lc/f;->e(J)Lc/f;

    invoke-virtual {v0, v10}, Lc/f;->writeByte(I)Lc/f;

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 11
    invoke-virtual {v6}, Lc/w;->b()Lc/w;

    move-result-object v7

    iput-object v7, p0, Lc/f;->b:Lc/w;

    .line 12
    invoke-static {v6}, Lc/x;->a(Lc/w;)V

    goto :goto_4

    .line 13
    :cond_7
    iput v8, v6, Lc/w;->b:I

    :goto_4
    if-nez v0, :cond_8

    .line 14
    iget-object v6, p0, Lc/f;->b:Lc/w;

    if-nez v6, :cond_0

    .line 15
    :cond_8
    iget-wide v2, p0, Lc/f;->c:J

    int-to-long v0, v1

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lc/f;->c:J

    return-wide v4

    .line 16
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public k()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lc/e;

    invoke-direct {v0, p0}, Lc/e;-><init>(Lc/f;)V

    return-object v0
.end method

.method public l()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Lc/f;->c:J

    invoke-virtual {p0, v0, v1}, Lc/f;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public m()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v2, p0, Lc/f;->b:Lc/w;

    iget-object v2, v2, Lc/w;->g:Lc/w;

    .line 3
    iget v3, v2, Lc/w;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lc/w;->e:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lc/w;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public n()Lc/i;
    .locals 2

    .line 1
    new-instance v0, Lc/i;

    invoke-virtual {p0}, Lc/f;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/i;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lc/f;->c:J

    sget-object v2, Lc/D;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lc/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    return-wide v0
.end method

.method public q()Lc/i;
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    .line 2
    invoke-virtual {p0, v1}, Lc/f;->a(I)Lc/i;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lc/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lc/D;->a(JJJ)V

    .line 2
    iget-object v0, p0, Lc/f;->b:Lc/w;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget v1, v0, Lc/w;->c:I

    iget v2, v0, Lc/w;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v1, v0, Lc/w;->a:[B

    iget v2, v0, Lc/w;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, v0, Lc/w;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lc/w;->b:I

    .line 6
    iget-wide p1, p0, Lc/f;->c:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lc/f;->c:J

    .line 7
    iget p1, v0, Lc/w;->b:I

    iget p2, v0, Lc/w;->c:I

    if-ne p1, p2, :cond_1

    .line 8
    invoke-virtual {v0}, Lc/w;->b()Lc/w;

    move-result-object p1

    iput-object p1, p0, Lc/f;->b:Lc/w;

    .line 9
    invoke-static {v0}, Lc/x;->a(Lc/w;)V

    :cond_1
    return p3
.end method

.method public read(Lc/f;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 10
    iget-wide v2, p0, Lc/f;->c:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 11
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lc/f;->write(Lc/f;J)V

    return-wide p2

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 9

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v2, p0, Lc/f;->b:Lc/w;

    .line 3
    iget v3, v2, Lc/w;->b:I

    .line 4
    iget v4, v2, Lc/w;->c:I

    .line 5
    iget-object v5, v2, Lc/w;->a:[B

    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 7
    iput-wide v0, p0, Lc/f;->c:J

    if-ne v6, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lc/w;->b()Lc/w;

    move-result-object v0

    iput-object v0, p0, Lc/f;->b:Lc/w;

    .line 9
    invoke-static {v2}, Lc/x;->a(Lc/w;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v6, v2, Lc/w;->b:I

    :goto_0
    return v3

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFully([B)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lc/f;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 10

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v4, p0, Lc/f;->b:Lc/w;

    .line 3
    iget v5, v4, Lc/w;->b:I

    .line 4
    iget v6, v4, Lc/w;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lc/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lc/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lc/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 9
    :cond_0
    iget-object v7, v4, Lc/w;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 10
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lc/f;->c:J

    if-ne v9, v6, :cond_1

    .line 12
    invoke-virtual {v4}, Lc/w;->b()Lc/w;

    move-result-object v0

    iput-object v0, p0, Lc/f;->b:Lc/w;

    .line 13
    invoke-static {v4}, Lc/x;->a(Lc/w;)V

    goto :goto_0

    .line 14
    :cond_1
    iput v9, v4, Lc/w;->b:I

    :goto_0
    return v5

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lc/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lc/f;->c:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 2
    iget-object v5, v0, Lc/f;->b:Lc/w;

    .line 3
    iget v6, v5, Lc/w;->b:I

    .line 4
    iget v7, v5, Lc/w;->c:I

    sub-int v8, v7, v6

    const/16 v9, 0x20

    const/16 v10, 0x8

    if-ge v8, v10, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lc/f;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v9

    .line 6
    invoke-virtual/range {p0 .. p0}, Lc/f;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 7
    :cond_0
    iget-object v8, v5, Lc/w;->a:[B

    add-int/lit8 v11, v6, 0x1

    .line 8
    aget-byte v6, v8, v6

    int-to-long v12, v6

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v6, 0x38

    shl-long/2addr v12, v6

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v8, v11

    int-to-long v3, v11

    and-long/2addr v3, v14

    const/16 v11, 0x30

    shl-long/2addr v3, v11

    or-long/2addr v3, v12

    add-int/lit8 v11, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v12, v6

    and-long/2addr v12, v14

    const/16 v6, 0x28

    shl-long/2addr v12, v6

    or-long/2addr v3, v12

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v8, v11

    int-to-long v11, v11

    and-long/2addr v11, v14

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v14

    const/16 v6, 0x18

    shl-long/2addr v11, v6

    or-long/2addr v3, v11

    add-int/lit8 v6, v9, 0x1

    aget-byte v9, v8, v9

    int-to-long v11, v9

    and-long/2addr v11, v14

    const/16 v9, 0x10

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v14

    shl-long v10, v11, v10

    or-long/2addr v3, v10

    add-int/lit8 v6, v9, 0x1

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v3, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v1, v8

    .line 9
    iput-wide v1, v0, Lc/f;->c:J

    if-ne v6, v7, :cond_1

    .line 10
    invoke-virtual {v5}, Lc/w;->b()Lc/w;

    move-result-object v1

    iput-object v1, v0, Lc/f;->b:Lc/w;

    .line 11
    invoke-static {v5}, Lc/x;->a(Lc/w;)V

    goto :goto_0

    .line 12
    :cond_1
    iput v6, v5, Lc/w;->b:I

    :goto_0
    return-wide v3

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lc/f;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readShort()S
    .locals 10

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v4, p0, Lc/f;->b:Lc/w;

    .line 3
    iget v5, v4, Lc/w;->b:I

    .line 4
    iget v6, v4, Lc/w;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 6
    invoke-virtual {p0}, Lc/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 7
    :cond_0
    iget-object v7, v4, Lc/w;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 8
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lc/f;->c:J

    if-ne v9, v6, :cond_1

    .line 10
    invoke-virtual {v4}, Lc/w;->b()Lc/w;

    move-result-object v0

    iput-object v0, p0, Lc/f;->b:Lc/w;

    .line 11
    invoke-static {v4}, Lc/x;->a(Lc/w;)V

    goto :goto_0

    .line 12
    :cond_1
    iput v9, v4, Lc/w;->b:I

    :goto_0
    int-to-short v0, v5

    return v0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lc/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lc/f;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public skip(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iget-object v0, p0, Lc/f;->b:Lc/w;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lc/w;->c:I

    iget v0, v0, Lc/w;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 3
    iget-wide v2, p0, Lc/f;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc/f;->c:J

    sub-long/2addr p1, v4

    .line 4
    iget-object v0, p0, Lc/f;->b:Lc/w;

    iget v2, v0, Lc/w;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lc/w;->b:I

    .line 5
    iget v1, v0, Lc/w;->b:I

    iget v2, v0, Lc/w;->c:I

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lc/w;->b()Lc/w;

    move-result-object v1

    iput-object v1, p0, Lc/f;->b:Lc/w;

    .line 7
    invoke-static {v0}, Lc/x;->a(Lc/w;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public timeout()Lc/C;
    .locals 1

    .line 1
    sget-object v0, Lc/C;->NONE:Lc/C;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f;->q()Lc/i;

    move-result-object v0

    invoke-virtual {v0}, Lc/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([B)Lc/f;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc/f;->write([BII)Lc/f;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lc/f;
    .locals 9

    if-eqz p1, :cond_1

    .line 5
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lc/D;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lc/f;->b(I)Lc/w;

    move-result-object v0

    sub-int v1, p3, p2

    .line 7
    iget v2, v0, Lc/w;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    iget-object v2, v0, Lc/w;->a:[B

    iget v3, v0, Lc/w;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 9
    iget v2, v0, Lc/w;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lc/w;->c:I

    goto :goto_0

    .line 10
    :cond_0
    iget-wide p1, p0, Lc/f;->c:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lc/f;->c:J

    return-object p0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic write([B)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/f;->write([B)Lc/f;

    return-object p0
.end method

.method public bridge synthetic write([BII)Lc/g;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lc/f;->write([BII)Lc/f;

    return-object p0
.end method

.method public write(Lc/f;J)V
    .locals 6

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    .line 12
    iget-wide v0, p1, Lc/f;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc/D;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    .line 13
    iget-object v0, p1, Lc/f;->b:Lc/w;

    iget v1, v0, Lc/w;->c:I

    iget v0, v0, Lc/w;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    cmp-long v2, p2, v0

    if-gez v2, :cond_3

    .line 14
    iget-object v0, p0, Lc/f;->b:Lc/w;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/w;->g:Lc/w;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 15
    iget-boolean v1, v0, Lc/w;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lc/w;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lc/w;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 16
    :cond_1
    iget v3, v0, Lc/w;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 17
    iget-object v1, p1, Lc/f;->b:Lc/w;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lc/w;->a(Lc/w;I)V

    .line 18
    iget-wide v0, p1, Lc/f;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lc/f;->c:J

    .line 19
    iget-wide v0, p0, Lc/f;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lc/f;->c:J

    return-void

    .line 20
    :cond_2
    iget-object v0, p1, Lc/f;->b:Lc/w;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lc/w;->a(I)Lc/w;

    move-result-object v0

    iput-object v0, p1, Lc/f;->b:Lc/w;

    .line 21
    :cond_3
    iget-object v0, p1, Lc/f;->b:Lc/w;

    .line 22
    iget v1, v0, Lc/w;->c:I

    iget v2, v0, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 23
    invoke-virtual {v0}, Lc/w;->b()Lc/w;

    move-result-object v3

    iput-object v3, p1, Lc/f;->b:Lc/w;

    .line 24
    iget-object v3, p0, Lc/f;->b:Lc/w;

    if-nez v3, :cond_4

    .line 25
    iput-object v0, p0, Lc/f;->b:Lc/w;

    .line 26
    iget-object v0, p0, Lc/f;->b:Lc/w;

    iput-object v0, v0, Lc/w;->g:Lc/w;

    iput-object v0, v0, Lc/w;->f:Lc/w;

    goto :goto_3

    .line 27
    :cond_4
    iget-object v3, v3, Lc/w;->g:Lc/w;

    .line 28
    invoke-virtual {v3, v0}, Lc/w;->a(Lc/w;)Lc/w;

    .line 29
    invoke-virtual {v0}, Lc/w;->a()V

    .line 30
    :goto_3
    iget-wide v3, p1, Lc/f;->c:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lc/f;->c:J

    .line 31
    iget-wide v3, p0, Lc/f;->c:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lc/f;->c:J

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public writeByte(I)Lc/f;
    .locals 4

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lc/f;->b(I)Lc/w;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lc/w;->a:[B

    iget v2, v0, Lc/w;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lc/w;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 4
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/f;->c:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/f;->writeByte(I)Lc/f;

    return-object p0
.end method

.method public writeInt(I)Lc/f;
    .locals 5

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lc/f;->b(I)Lc/w;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lc/w;->a:[B

    .line 4
    iget v2, v0, Lc/w;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v1, v3

    .line 9
    iput v2, v0, Lc/w;->c:I

    .line 10
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/f;->c:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/f;->writeInt(I)Lc/f;

    return-object p0
.end method

.method public writeLong(J)Lc/f;
    .locals 9

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lc/f;->b(I)Lc/w;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lc/w;->a:[B

    .line 4
    iget v3, v1, Lc/w;->c:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 5
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 6
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 7
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 8
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 9
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 10
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 11
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 12
    aput-byte p1, v2, v4

    .line 13
    iput v0, v1, Lc/w;->c:I

    .line 14
    iget-wide p1, p0, Lc/f;->c:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lc/f;->c:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/f;->writeLong(J)Lc/f;

    return-object p0
.end method

.method public writeShort(I)Lc/f;
    .locals 5

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lc/f;->b(I)Lc/w;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lc/w;->a:[B

    .line 4
    iget v2, v0, Lc/w;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v1, v3

    .line 7
    iput v2, v0, Lc/w;->c:I

    .line 8
    iget-wide v0, p0, Lc/f;->c:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc/f;->c:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lc/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/f;->writeShort(I)Lc/f;

    return-object p0
.end method
