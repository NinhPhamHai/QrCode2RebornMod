.class public final Lf/devrel/easypermissions/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/devrel/easypermissions/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lf/devrel/easypermissions/a/g;

.field private final b:I

.field private final c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/devrel/easypermissions/f$a;->g:I

    .line 3
    invoke-static {p1}, Lf/devrel/easypermissions/a/g;->a(Landroid/app/Activity;)Lf/devrel/easypermissions/a/g;

    move-result-object p1

    iput-object p1, p0, Lf/devrel/easypermissions/f$a;->a:Lf/devrel/easypermissions/a/g;

    .line 4
    iput p2, p0, Lf/devrel/easypermissions/f$a;->b:I

    .line 5
    iput-object p3, p0, Lf/devrel/easypermissions/f$a;->c:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lf/devrel/easypermissions/f$a;->g:I

    .line 8
    invoke-static {p1}, Lf/devrel/easypermissions/a/g;->a(Landroid/support/v4/app/Fragment;)Lf/devrel/easypermissions/a/g;

    move-result-object p1

    iput-object p1, p0, Lf/devrel/easypermissions/f$a;->a:Lf/devrel/easypermissions/a/g;

    .line 9
    iput p2, p0, Lf/devrel/easypermissions/f$a;->b:I

    .line 10
    iput-object p3, p0, Lf/devrel/easypermissions/f$a;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lf/devrel/easypermissions/f$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/devrel/easypermissions/f$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lf/devrel/easypermissions/f;
    .locals 10

    .line 2
    iget-object v0, p0, Lf/devrel/easypermissions/f$a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/devrel/easypermissions/f$a;->a:Lf/devrel/easypermissions/a/g;

    invoke-virtual {v0}, Lf/devrel/easypermissions/a/g;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lf/devrel/easypermissions/g;->rationale_ask:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/f$a;->d:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lf/devrel/easypermissions/f$a;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lf/devrel/easypermissions/f$a;->a:Lf/devrel/easypermissions/a/g;

    invoke-virtual {v0}, Lf/devrel/easypermissions/a/g;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/f$a;->e:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Lf/devrel/easypermissions/f$a;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lf/devrel/easypermissions/f$a;->a:Lf/devrel/easypermissions/a/g;

    invoke-virtual {v0}, Lf/devrel/easypermissions/a/g;->a()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/devrel/easypermissions/f$a;->f:Ljava/lang/String;

    .line 8
    :cond_2
    new-instance v0, Lf/devrel/easypermissions/f;

    iget-object v2, p0, Lf/devrel/easypermissions/f$a;->a:Lf/devrel/easypermissions/a/g;

    iget-object v3, p0, Lf/devrel/easypermissions/f$a;->c:[Ljava/lang/String;

    iget v4, p0, Lf/devrel/easypermissions/f$a;->b:I

    iget-object v5, p0, Lf/devrel/easypermissions/f$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lf/devrel/easypermissions/f$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lf/devrel/easypermissions/f$a;->f:Ljava/lang/String;

    iget v8, p0, Lf/devrel/easypermissions/f$a;->g:I

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/devrel/easypermissions/f;-><init>(Lf/devrel/easypermissions/a/g;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/devrel/easypermissions/e;)V

    return-object v0
.end method
