.class public final enum Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;
.super Ljava/lang/Enum;
.source "Linkage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/linkage/Linkage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RFID_18K6C_TAG_PWD_PERM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

.field public static final enum ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

.field public static final enum ALWAYS_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

.field public static final enum ALWAYS_NOT_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

.field public static final enum NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

.field public static final enum SECURED_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;


# instance fields
.field private result:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 647
    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    const/4 v1, 0x0

    const-string v2, "ACCESSIBLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    const/4 v2, 0x1

    const-string v3, "ALWAYS_ACCESSIBLE"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ALWAYS_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    const/4 v3, 0x2

    const-string v4, "SECURED_ACCESSIBLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->SECURED_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    const/4 v4, 0x3

    const-string v5, "ALWAYS_NOT_ACCESSIBLE"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ALWAYS_NOT_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    .line 648
    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    const/4 v5, 0x4

    const-string v6, "NO_CHANGE"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    .line 645
    sget-object v7, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    aput-object v7, v6, v1

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ALWAYS_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    aput-object v1, v6, v2

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->SECURED_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    aput-object v1, v6, v3

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ALWAYS_NOT_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->$VALUES:[Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 653
    iput p3, p0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->result:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;
    .registers 2

    .line 645
    const-class v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    return-object p0
.end method

.method public static values()[Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;
    .registers 1

    .line 645
    sget-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->$VALUES:[Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-virtual {v0}, [Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 658
    iget v0, p0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->result:I

    return v0
.end method
