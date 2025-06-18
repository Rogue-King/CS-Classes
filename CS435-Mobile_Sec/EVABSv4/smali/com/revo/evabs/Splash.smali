.class public Lcom/revo/evabs/Splash;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Splash.java"


# instance fields
.field private final SPLASH_DISPLAY_LENGTH:I

.field im:Landroid/widget/ImageView;

.field slide_down_anim:Landroid/view/animation/Animation;

.field slide_up_anim:Landroid/view/animation/Animation;

.field tv:Landroid/widget/TextView;

.field tv1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 14
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/revo/evabs/Splash;->SPLASH_DISPLAY_LENGTH:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Splash;->setContentView(I)V

    .line 27
    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/revo/evabs/Splash;->im:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0a0139

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/revo/evabs/Splash;->tv:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/revo/evabs/Splash;->tv1:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f010010

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/revo/evabs/Splash;->slide_up_anim:Landroid/view/animation/Animation;

    .line 32
    iget-object v0, p0, Lcom/revo/evabs/Splash;->im:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revo/evabs/Splash;->slide_up_anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 34
    const v0, 0x7f01000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/revo/evabs/Splash;->slide_down_anim:Landroid/view/animation/Animation;

    .line 35
    iget-object v0, p0, Lcom/revo/evabs/Splash;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revo/evabs/Splash;->slide_down_anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 36
    iget-object v0, p0, Lcom/revo/evabs/Splash;->tv1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revo/evabs/Splash;->slide_down_anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/revo/evabs/Splash$1;

    invoke-direct {v1, p0}, Lcom/revo/evabs/Splash$1;-><init>(Lcom/revo/evabs/Splash;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method
