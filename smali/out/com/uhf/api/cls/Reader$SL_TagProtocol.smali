.class public final enum Lcom/uhf/api/cls/Reader$SL_TagProtocol;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SL_TagProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$SL_TagProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_IPX256:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_IPX64:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_ISO180006B:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field public static final enum SL_TAG_PROTOCOL_NONE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 178
    new-instance v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v1, 0x0

    const-string v2, "SL_TAG_PROTOCOL_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_NONE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 179
    new-instance v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "SL_TAG_PROTOCOL_ISO180006B"

    invoke-direct {v0, v4, v2, v3}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 180
    new-instance v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v4, 0x2

    const/4 v5, 0x5

    const-string v6, "SL_TAG_PROTOCOL_GEN2"

    invoke-direct {v0, v6, v4, v5}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 181
    new-instance v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v6, 0x6

    const-string v7, "SL_TAG_PROTOCOL_ISO180006B_UCODE"

    invoke-direct {v0, v7, v3, v6}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 182
    new-instance v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v7, 0x4

    const-string v8, "SL_TAG_PROTOCOL_IPX64"

    const/4 v9, 0x7

    invoke-direct {v0, v8, v7, v9}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX64:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 183
    new-instance v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const-string v8, "SL_TAG_PROTOCOL_IPX256"

    const/16 v9, 0x8

    invoke-direct {v0, v8, v5, v9}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX256:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    new-array v6, v6, [Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 176
    sget-object v8, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_NONE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    aput-object v8, v6, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    aput-object v1, v6, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    aput-object v1, v6, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    aput-object v1, v6, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX64:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    aput-object v1, v6, v7

    aput-object v0, v6, v5

    sput-object v6, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput p3, p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->p_v:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$SL_TagProtocol;
    .registers 2

    if-eqz p0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x7

    if-eq p0, v0, :cond_17

    const/16 v0, 0x8

    if-eq p0, v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_14
    sget-object p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX256:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0

    .line 204
    :cond_17
    sget-object p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_IPX64:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0

    .line 202
    :cond_1a
    sget-object p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B_UCODE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0

    .line 200
    :cond_1d
    sget-object p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0

    .line 198
    :cond_20
    sget-object p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_ISO180006B:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0

    .line 196
    :cond_23
    sget-object p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_NONE:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$SL_TagProtocol;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$SL_TagProtocol;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->p_v:I

    return v0
.end method
