.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;
.super Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;
.source "com.google.firebase:firebase-config@@19.1.4"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
