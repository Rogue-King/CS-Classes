.class public final enum Landroid/arch/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/arch/lifecycle/Lifecycle$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 113
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v1, 0x0

    const-string v2, "ON_CREATE"

    invoke-direct {v0, v2, v1}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 117
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v2, 0x1

    const-string v3, "ON_START"

    invoke-direct {v0, v3, v2}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 121
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v3, 0x2

    const-string v4, "ON_RESUME"

    invoke-direct {v0, v4, v3}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 125
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v4, 0x3

    const-string v5, "ON_PAUSE"

    invoke-direct {v0, v5, v4}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 129
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v5, 0x4

    const-string v6, "ON_STOP"

    invoke-direct {v0, v6, v5}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 133
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v6, 0x5

    const-string v7, "ON_DESTROY"

    invoke-direct {v0, v7, v6}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 137
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v7, 0x6

    const-string v8, "ON_ANY"

    invoke-direct {v0, v8, v7}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/arch/lifecycle/Lifecycle$Event;

    sget-object v8, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v8, v0, v1

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v2

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v3

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v4

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v5

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v6

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v7

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->$VALUES:[Landroid/arch/lifecycle/Lifecycle$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    const-class v0, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0
.end method

.method public static values()[Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 1

    .line 108
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->$VALUES:[Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0}, [Landroid/arch/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0
.end method
