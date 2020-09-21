.class public interface abstract Lio/realm/SyncUser$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lio/realm/ObjectServerError;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSuccess(Lio/realm/SyncUser;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
