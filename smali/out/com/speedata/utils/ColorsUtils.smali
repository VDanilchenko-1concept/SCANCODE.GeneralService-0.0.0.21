.class public final Lcom/speedata/utils/ColorsUtils;
.super Ljava/lang/Object;
.source "ColorsUtils.java"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLACK_TRANSLUCENT:I = -0x80000000

.field public static final BLUE:I = -0xffff01

.field public static final BLUE_DARK:I = -0xffff75

.field public static final BLUE_DARK_TRANSLUCENT:I = -0x7fffff75

.field public static final BLUE_LIGHT:I = -0xc95a1d

.field public static final BLUE_LIGHT_TRANSLUCENT:I = -0x7fc95a1d

.field public static final BLUE_TRANSLUCENT:I = -0x7fffff01

.field public static final CHOCOLATE:I = -0x2d96e2

.field public static final CHOCOLATE_TRANSLUCENT:I = -0x7f2d96e2

.field public static final CYAN:I = -0xff0001

.field public static final CYAN_DARK:I = -0xff7475

.field public static final CYAN_DARK_TRANSLUCENT:I = -0x7fff7475

.field public static final CYAN_TRANSLUCENT:I = -0x7fff0001

.field public static final FUCHSIA:I = -0xff01

.field public static final FUCHSIA_TRANSLUCENT:I = -0x7f00ff01

.field public static final GOLD:I = -0x2900

.field public static final GOLD_TRANSLUCENT:I = -0x7f002900

.field public static final GRAY:I = -0x69696a

.field public static final GRAYWHITE:I = -0xd0d0e

.field public static final GRAYWHITE_TRANSLUCENT:I = -0x7f0d0d0e

.field public static final GRAY_DARK:I = -0x565657

.field public static final GRAY_DARK_TRANSLUCENT:I = -0x7f565657

.field public static final GRAY_DIM:I = -0x969697

.field public static final GRAY_DIM_TRANSLUCENT:I = -0x7f969697

.field public static final GRAY_LIGHT:I = -0x2c2c2d

.field public static final GRAY_LIGHT_TRANSLUCENT:I = -0x7f2c2c2d

.field public static final GRAY_TRANSLUCENT:I = -0x7f69696a

.field public static final GREEN:I = -0xff0100

.field public static final GREEN_DARK:I = -0xffcd00

.field public static final GREEN_DARK_TRANSLUCENT:I = -0x7fffcd00

.field public static final GREEN_LIGHT:I = -0x330034

.field public static final GREEN_LIGHT_TRANSLUCENT:I = -0x7f330034

.field public static final GREEN_TRANSLUCENT:I = -0x7fff0100

.field public static final HIGHLIGHT:I = 0x33ffffff

.field public static final LOWLIGHT:I = 0x33000000

.field public static final ORANGE:I = -0x5b00

.field public static final ORANGERED:I = -0xbb00

.field public static final ORANGERED_TRANSLUCENT:I = -0x7f00bb00

.field public static final ORANGE_DARK:I = -0x7800

.field public static final ORANGE_DARK_TRANSLUCENT:I = -0x7f007800

.field public static final ORANGE_LIGHT:I = -0x44cd

.field public static final ORANGE_LIGHT_TRANSLUCENT:I = -0x7f0044cd

.field public static final ORANGE_TRANSLUCENT:I = -0x7f005b00

.field public static final PINK:I = -0x3f35

.field public static final PINK_TRANSLUCENT:I = -0x7f003f35

.field public static final PURPLE:I = -0x7fff80

.field public static final PURPLE_TRANSLUCENT:I = -0x7f7fff80

.field public static final RED:I = -0x10000

.field public static final RED_DARK:I = -0x750000

.field public static final RED_DARK_TRANSLUCENT:I = -0x7f750000

.field public static final RED_TRANSLUCENT:I = -0x7f010000

.field public static final SILVER:I = -0x3f3f40

.field public static final SILVER_TRANSLUCENT:I = -0x7f3f3f40

.field public static final SKYBLUE:I = -0x783115

.field public static final SKYBLUE_DARK:I = -0xff4001

.field public static final SKYBLUE_DARK_TRANSLUCENT:I = -0x7fff4001

.field public static final SKYBLUE_LIGHT:I = -0x783106

.field public static final SKYBLUE_LIGHT_TRANSLUCENT:I = -0x7f783106

.field public static final SKYBLUE_TRANSLUCENT:I = -0x7f783115

.field public static final TOMATO:I = -0x9cb9

.field public static final TOMATO_TRANSLUCENT:I = -0x7f009cb9

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final WHITE_TRANSLUCENT:I = -0x7f000001

.field public static final YELLOW:I = -0x100

.field public static final YELLOW_LIGHT:I = -0x20

.field public static final YELLOW_LIGHT_TRANSLUCENT:I = -0x7f000020

.field public static final YELLOW_TRANSLUCENT:I = -0x7f000100


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Do not need instantiate!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
