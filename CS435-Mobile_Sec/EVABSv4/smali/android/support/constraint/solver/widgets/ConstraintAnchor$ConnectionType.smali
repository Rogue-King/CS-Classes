.class public final enum Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

.field public static final enum RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

.field public static final enum STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    const/4 v1, 0x0

    const-string v2, "RELAXED"

    invoke-direct {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    const/4 v2, 0x1

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    aput-object v3, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 1

    .line 53
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method
