.class Lcom/journeyapps/barcodescanner/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/a/x;->a(Ljava/util/List;Lcom/journeyapps/barcodescanner/D;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/journeyapps/barcodescanner/D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/D;

.field final synthetic b:Lcom/journeyapps/barcodescanner/a/x;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/a/x;Lcom/journeyapps/barcodescanner/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/a/w;->b:Lcom/journeyapps/barcodescanner/a/x;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/a/w;->a:Lcom/journeyapps/barcodescanner/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/w;->b:Lcom/journeyapps/barcodescanner/a/x;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/w;->a:Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {v0, p1, v1}, Lcom/journeyapps/barcodescanner/a/x;->a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/a/w;->b:Lcom/journeyapps/barcodescanner/a/x;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/a/w;->a:Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {v0, p2, v1}, Lcom/journeyapps/barcodescanner/a/x;->a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)F

    move-result p2

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/journeyapps/barcodescanner/D;

    check-cast p2, Lcom/journeyapps/barcodescanner/D;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/a/w;->a(Lcom/journeyapps/barcodescanner/D;Lcom/journeyapps/barcodescanner/D;)I

    move-result p1

    return p1
.end method
