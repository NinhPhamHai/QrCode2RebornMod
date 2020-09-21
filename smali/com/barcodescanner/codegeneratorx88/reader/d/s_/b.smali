.class public final synthetic Lcom/barcodescanner/codegeneratorx88/reader/d/scan/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/scan/l;->a(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
