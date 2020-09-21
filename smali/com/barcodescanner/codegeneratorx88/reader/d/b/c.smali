.class public Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/barcodescanner/codegeneratorx88/reader/d/a/e<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 23
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "PHONE"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "INPUT_MASSAGE"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "QR_MESSAGE"

    .line 28
    invoke-static {p2, v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "LATITUDE_LOCATON"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "LONGITUDE_LOCATON"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 47
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "QUERY_LOCATON"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    return-void

    .line 49
    :cond_5
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 50
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object v7, p3

    .line 51
    invoke-static/range {v1 .. v7}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(DDDLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "QR_LOCATION"

    .line 52
    invoke-static {p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "TITLE_EVENT"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 32
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "LOCATION_EVENT"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 34
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 35
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "DESCRIPTION_EVENT"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    return-void

    .line 36
    :cond_5
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "BEGIN_EVENT"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    if-nez v0, :cond_7

    return-void

    .line 38
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 39
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "END_EVENT"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_8
    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    move-object v8, p3

    .line 40
    invoke-static/range {v1 .. v8}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_EVENT"

    move-object v2, p1

    .line 41
    invoke-static {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "FIRST_NAME"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "ADDRESS"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {p4}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "PHONE"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    return-void

    .line 8
    :cond_5
    invoke-static {p5}, Lcom/utility/UtilsLib;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "EMAIL"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    if-nez v0, :cond_7

    return-void

    .line 10
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4, p5, p3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    const-string p2, "QR_CONTACT"

    .line 12
    invoke-static {p1, p2, p4}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/utility/UtilsLib;->validateEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string p2, "SUBJECT"

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string p2, "INPUT_MASSAGE"

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "QR_EMAIL"

    invoke-static {p2, p3, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string p2, "EMAIL"

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "PHONE"

    invoke-interface {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_TELEPHONE"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "ID_WIFI"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "PASSWORD_WIFI"

    invoke-interface {v0, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-static {p3, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "QR_WIFI"

    .line 11
    invoke-static {p2, p3, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p2

    check-cast p2, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "TEXT"

    invoke-interface {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_TEXT"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/utility/UtilsLib;->isUrlFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    const-string v2, "URL"

    invoke-interface {v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR_URL"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/b/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V

    :cond_1
    return-void
.end method
