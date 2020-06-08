.class public final enum Lcom/uhf/api/cls/Reader$Lock_Type;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lock_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$Lock_Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCESS_PASSWD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum ACCESS_PASSWD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum ACCESS_PASSWD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK1_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK1_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK1_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK2_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK2_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK2_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK3_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK3_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum BANK3_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum KILL_PASSWORD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum KILL_PASSWORD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

.field public static final enum KILL_PASSWORD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 243
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v1, 0x0

    const-string v2, "KILL_PASSWORD_UNLOCK"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 244
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v2, 0x1

    const-string v3, "KILL_PASSWORD_LOCK"

    const/16 v4, 0x200

    invoke-direct {v0, v3, v2, v4}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 245
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v3, 0x2

    const-string v4, "KILL_PASSWORD_PERM_LOCK"

    const/16 v5, 0x300

    invoke-direct {v0, v4, v3, v5}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 247
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v4, 0x3

    const-string v5, "ACCESS_PASSWD_UNLOCK"

    invoke-direct {v0, v5, v4, v1}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 248
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v5, 0x4

    const-string v6, "ACCESS_PASSWD_LOCK"

    const/16 v7, 0x80

    invoke-direct {v0, v6, v5, v7}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 249
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v6, 0x5

    const-string v7, "ACCESS_PASSWD_PERM_LOCK"

    const/16 v8, 0xc0

    invoke-direct {v0, v7, v6, v8}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 251
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v7, 0x6

    const-string v8, "BANK1_UNLOCK"

    invoke-direct {v0, v8, v7, v1}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 252
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v8, 0x7

    const-string v9, "BANK1_LOCK"

    const/16 v10, 0x20

    invoke-direct {v0, v9, v8, v10}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 253
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v9, 0x8

    const-string v10, "BANK1_PERM_LOCK"

    const/16 v11, 0x30

    invoke-direct {v0, v10, v9, v11}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 255
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v10, 0x9

    const-string v11, "BANK2_UNLOCK"

    invoke-direct {v0, v11, v10, v1}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 256
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v11, 0xa

    const-string v12, "BANK2_LOCK"

    invoke-direct {v0, v12, v11, v9}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 257
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v12, 0xb

    const/16 v13, 0xc

    const-string v14, "BANK2_PERM_LOCK"

    invoke-direct {v0, v14, v12, v13}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 259
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const-string v14, "BANK3_UNLOCK"

    invoke-direct {v0, v14, v13, v1}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 260
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v14, 0xd

    const-string v15, "BANK3_LOCK"

    invoke-direct {v0, v15, v14, v3}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 261
    new-instance v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v15, 0xe

    const-string v14, "BANK3_PERM_LOCK"

    invoke-direct {v0, v14, v15, v4}, Lcom/uhf/api/cls/Reader$Lock_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/uhf/api/cls/Reader$Lock_Type;

    .line 241
    sget-object v16, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v16, v14, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v12

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    aput-object v1, v14, v13

    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/uhf/api/cls/Reader$Lock_Type;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Lock_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Lcom/uhf/api/cls/Reader$Lock_Type;->p_v:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$Lock_Type;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/Reader$Lock_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$Lock_Type;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$Lock_Type;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/Reader$Lock_Type;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Lock_Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/Reader$Lock_Type;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/uhf/api/cls/Reader$Lock_Type;->p_v:I

    return v0
.end method
