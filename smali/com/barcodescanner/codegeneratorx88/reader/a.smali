.class public final Lcom/barcodescanner/codegeneratorx88/reader/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "false"

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/barcodescanner/codegeneratorx88/reader/a;->a:Z

    const-string v1, "true"

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/barcodescanner/codegeneratorx88/reader/a;->b:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/barcodescanner/codegeneratorx88/reader/a;->c:Z

    return-void
.end method
