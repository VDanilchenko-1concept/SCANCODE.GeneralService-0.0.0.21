.class public Lcom/speedata/utils/PlaySoundPool;
.super Ljava/lang/Object;
.source "PlaySoundPool.java"


# static fields
.field private static final ERROR:I = 0x2

.field private static final LASER:I = 0x1

.field private static playSoundPool:Lcom/speedata/utils/PlaySoundPool;


# instance fields
.field private context:Landroid/content/Context;

.field private mgr:Landroid/media/AudioManager;

.field private soundPool:Landroid/media/SoundPool;

.field private soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/speedata/utils/PlaySoundPool;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/speedata/utils/PlaySoundPool;->initSounds()V

    .line 45
    invoke-direct {p0}, Lcom/speedata/utils/PlaySoundPool;->loadSounds()V

    const-string v0, "vibrator"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/speedata/utils/PlaySoundPool;->vibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public static getPlaySoundPool(Landroid/content/Context;)Lcom/speedata/utils/PlaySoundPool;
    .registers 2

    .line 36
    sget-object v0, Lcom/speedata/utils/PlaySoundPool;->playSoundPool:Lcom/speedata/utils/PlaySoundPool;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/speedata/utils/PlaySoundPool;

    invoke-direct {v0, p0}, Lcom/speedata/utils/PlaySoundPool;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/speedata/utils/PlaySoundPool;->playSoundPool:Lcom/speedata/utils/PlaySoundPool;

    .line 39
    :cond_b
    sget-object p0, Lcom/speedata/utils/PlaySoundPool;->playSoundPool:Lcom/speedata/utils/PlaySoundPool;

    return-object p0
.end method

.method private initSounds()V
    .registers 5

    .line 61
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->soundPool:Landroid/media/SoundPool;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->soundPoolMap:Ljava/util/HashMap;

    .line 66
    iget-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->mgr:Landroid/media/AudioManager;

    return-void
.end method

.method private loadSfx(II)V
    .registers 7

    .line 78
    iget-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/speedata/utils/PlaySoundPool;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/speedata/utils/PlaySoundPool;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, p2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadSounds()V
    .registers 3

    .line 102
    sget v0, Lcom/speedata/deivice/R$raw;->scan:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/speedata/utils/PlaySoundPool;->loadSfx(II)V

    .line 103
    sget v0, Lcom/speedata/deivice/R$raw;->error:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/speedata/utils/PlaySoundPool;->loadSfx(II)V

    return-void
.end method

.method private play(I)V
    .registers 10

    .line 87
    iget-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->mgr:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v4, v0

    .line 89
    iget-object v1, p0, Lcom/speedata/utils/PlaySoundPool;->soundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->soundPoolMap:Ljava/util/HashMap;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    .line 89
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method


# virtual methods
.method public playError()V
    .registers 4

    const/4 v0, 0x2

    .line 118
    invoke-direct {p0, v0}, Lcom/speedata/utils/PlaySoundPool;->play(I)V

    .line 119
    iget-object v0, p0, Lcom/speedata/utils/PlaySoundPool;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public playLaser()V
    .registers 3

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*******************LASER*******************"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, v0}, Lcom/speedata/utils/PlaySoundPool;->play(I)V

    return-void
.end method
