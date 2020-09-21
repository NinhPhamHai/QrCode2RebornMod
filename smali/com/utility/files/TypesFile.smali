.class public interface abstract Lcom/utility/files/TypesFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final audios:[Ljava/lang/String;

.field public static final documents:[Ljava/lang/String;

.field public static final images:[Ljava/lang/String;

.field public static final videos:[Ljava/lang/String;

.field public static final zips:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".doc"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, ".docx"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, ".xls"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, ".xlsx"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, ".pdf"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, ".txt"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, ".xml"

    aput-object v9, v1, v8

    sput-object v1, Lcom/utility/files/TypesFile;->documents:[Ljava/lang/String;

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    const-string v9, ".png"

    aput-object v9, v1, v2

    const-string v9, ".jpg"

    aput-object v9, v1, v3

    const-string v9, ".jpeg"

    aput-object v9, v1, v4

    const-string v9, ".gif"

    aput-object v9, v1, v5

    const-string v9, ".PNG"

    aput-object v9, v1, v6

    const-string v9, ".JPG"

    aput-object v9, v1, v7

    const-string v9, ".JPEG"

    aput-object v9, v1, v8

    sput-object v1, Lcom/utility/files/TypesFile;->images:[Ljava/lang/String;

    .line 3
    new-array v1, v8, [Ljava/lang/String;

    const-string v9, ".ts"

    aput-object v9, v1, v2

    const-string v9, ".3gp"

    aput-object v9, v1, v3

    const-string v10, ".wmv"

    aput-object v10, v1, v4

    const-string v10, ".mkv"

    aput-object v10, v1, v5

    const-string v10, ".mov"

    aput-object v10, v1, v6

    const-string v10, ".mp4"

    aput-object v10, v1, v7

    sput-object v1, Lcom/utility/files/TypesFile;->videos:[Ljava/lang/String;

    const/16 v1, 0x16

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    const-string v10, ".aa"

    aput-object v10, v1, v2

    const-string v10, ".aax"

    aput-object v10, v1, v3

    const-string v10, ".aiff"

    aput-object v10, v1, v4

    const-string v11, ".ape"

    aput-object v11, v1, v5

    const-string v11, ".ra"

    aput-object v11, v1, v6

    const-string v6, ".rm"

    aput-object v6, v1, v7

    const-string v6, ".tta"

    aput-object v6, v1, v8

    const-string v6, ".vox"

    aput-object v6, v1, v0

    const-string v0, ".wav"

    const/16 v6, 0x8

    aput-object v0, v1, v6

    const/16 v6, 0x9

    const-string v7, ".aac"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, ".arm"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, ".amr"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    const-string v7, ".ogg"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    const-string v7, ".mp3"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    const-string v7, ".sln"

    aput-object v7, v1, v6

    const/16 v6, 0xf

    aput-object v9, v1, v6

    const/16 v6, 0x10

    const-string v7, ".flac"

    aput-object v7, v1, v6

    const/16 v6, 0x11

    aput-object v0, v1, v6

    const/16 v0, 0x12

    const-string v6, ".m4a"

    aput-object v6, v1, v0

    const/16 v0, 0x13

    const-string v6, ".3gpp"

    aput-object v6, v1, v0

    const/16 v0, 0x14

    const-string v6, ".act"

    aput-object v6, v1, v0

    const/16 v0, 0x15

    aput-object v10, v1, v0

    sput-object v1, Lcom/utility/files/TypesFile;->audios:[Ljava/lang/String;

    .line 5
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ".rar"

    aput-object v1, v0, v2

    const-string v1, ".zip"

    aput-object v1, v0, v3

    const-string v1, ".jar"

    aput-object v1, v0, v4

    sput-object v0, Lcom/utility/files/TypesFile;->zips:[Ljava/lang/String;

    return-void
.end method
