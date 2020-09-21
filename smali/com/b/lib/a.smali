.class public Lcom/b/lib/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x0

.field public static b:Ljava/lang/String; = "PRE_SHARING_IS_SHOW_RATE"

.field private static c:Z


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PRE_SHARING_ENABLE_SHOW_RATE"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 14
    sget-object v0, Lcom/b/lib/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/b/lib/a;->c:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/b/lib/a;->c:Z

    return v0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 4

    .line 1
    sput p1, Lcom/b/lib/a;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/b/lib/RateDialogActivity;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5
    sget-object v3, Lcom/b/lib/RateDialogActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 6
    sget-object v0, Lcom/b/lib/RateDialogActivity;->c:Ljava/lang/String;

    add-int/2addr p1, v3

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/b/lib/RateDialogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    sget-object p0, Lcom/b/lib/RateDialogActivity;->c:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v2
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/b/lib/RateDialogActivity;->f:Ljava/lang/String;

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/b/lib/RateDialogActivity;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    sget-object v1, Lcom/b/lib/RateDialogActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    sget-object p2, Lcom/b/lib/RateDialogActivity;->h:Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    invoke-static {p0, p1}, Lcom/b/lib/a;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
