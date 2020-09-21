.class public final Lc/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lc/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/s;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lc/A;
    .locals 1

    .line 11
    new-instance v0, Lc/C;

    invoke-direct {v0}, Lc/C;-><init>()V

    invoke-static {p0, v0}, Lc/s;->a(Ljava/io/InputStream;Lc/C;)Lc/A;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Lc/C;)Lc/A;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lc/p;

    invoke-direct {v0, p1, p0}, Lc/p;-><init>(Lc/C;Ljava/io/InputStream;)V

    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/z;)Lc/g;
    .locals 1

    .line 2
    new-instance v0, Lc/t;

    invoke-direct {v0, p0}, Lc/t;-><init>(Lc/z;)V

    return-object v0
.end method

.method public static a(Lc/A;)Lc/h;
    .locals 1

    .line 1
    new-instance v0, Lc/v;

    invoke-direct {v0, p0}, Lc/v;-><init>(Lc/A;)V

    return-object v0
.end method

.method public static a()Lc/z;
    .locals 1

    .line 17
    new-instance v0, Lc/q;

    invoke-direct {v0}, Lc/q;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lc/z;
    .locals 2

    if-eqz p0, :cond_0

    .line 15
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lc/s;->a(Ljava/io/OutputStream;)Lc/z;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;)Lc/z;
    .locals 1

    .line 3
    new-instance v0, Lc/C;

    invoke-direct {v0}, Lc/C;-><init>()V

    invoke-static {p0, v0}, Lc/s;->a(Ljava/io/OutputStream;Lc/C;)Lc/z;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/OutputStream;Lc/C;)Lc/z;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lc/o;

    invoke-direct {v0, p1, p0}, Lc/o;-><init>(Lc/C;Ljava/io/OutputStream;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/net/Socket;)Lc/z;
    .locals 1

    if-eqz p0, :cond_0

    .line 7
    invoke-static {p0}, Lc/s;->c(Ljava/net/Socket;)Lc/c;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lc/s;->a(Ljava/io/OutputStream;Lc/C;)Lc/z;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lc/c;->sink(Lc/z;)Lc/z;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/net/Socket;)Lc/A;
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lc/s;->c(Ljava/net/Socket;)Lc/c;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lc/s;->a(Ljava/io/InputStream;Lc/C;)Lc/A;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lc/c;->source(Lc/A;)Lc/A;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/File;)Lc/z;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc/s;->a(Ljava/io/OutputStream;)Lc/z;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/io/File;)Lc/A;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc/s;->a(Ljava/io/InputStream;)Lc/A;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/net/Socket;)Lc/c;
    .locals 1

    .line 3
    new-instance v0, Lc/r;

    invoke-direct {v0, p0}, Lc/r;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
