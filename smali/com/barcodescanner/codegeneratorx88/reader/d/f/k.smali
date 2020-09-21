.class Lcom/barcodescanner/codegeneratorx88/reader/d/f/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/f/k;->a:Lcom/barcodescanner/codegeneratorx88/reader/d/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/RealmResults;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/f/k;->a(Lio/realm/RealmResults;)V

    return-void
.end method
