.class public final Lcom/google/android/gms/internal/zzbif;
.super Ljava/lang/Object;


# static fields
.field private static zzglq:Landroid/content/Context;

.field private static zzglr:Ljava/lang/Boolean;


# direct methods
.method public static declared-synchronized zzdb(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzbif;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzbif;->zzglq:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzbif;->zzglr:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzbif;->zzglq:Landroid/content/Context;

    if-ne v2, v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/zzbif;->zzglr:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/google/android/gms/internal/zzbif;->zzglr:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/google/android/gms/internal/zzbif;->zzglr:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzbif;->zzglr:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    :try_start_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :goto_1
    sput-object v1, Lcom/google/android/gms/internal/zzbif;->zzglq:Landroid/content/Context;

    sget-object p0, Lcom/google/android/gms/internal/zzbif;->zzglr:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
