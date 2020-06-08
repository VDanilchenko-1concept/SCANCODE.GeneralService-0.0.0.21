.class public final enum Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;
.super Ljava/lang/Enum;
.source "Linkage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/linkage/Linkage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RFID_18K6C_COUNTRY_REGION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

.field public static final enum China840_845:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

.field public static final enum China920_925:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

.field public static final enum Open_Area902_928:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

.field public static final enum user_Area:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;


# instance fields
.field private result:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 614
    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    const/4 v1, 0x0

    const-string v2, "China840_845"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->China840_845:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    const/4 v2, 0x1

    const-string v3, "China920_925"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->China920_925:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    const/4 v3, 0x2

    const-string v4, "Open_Area902_928"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->Open_Area902_928:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    new-instance v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    const/4 v4, 0x3

    const-string v5, "user_Area"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->user_Area:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    .line 612
    sget-object v6, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->China840_845:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    aput-object v6, v5, v1

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->China920_925:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    aput-object v1, v5, v2

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->Open_Area902_928:Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->$VALUES:[Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 618
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 619
    iput p3, p0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->result:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;
    .registers 2

    .line 612
    const-class v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    return-object p0
.end method

.method public static values()[Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;
    .registers 1

    .line 612
    sget-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->$VALUES:[Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    invoke-virtual {v0}, [Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 624
    iget v0, p0, Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;->result:I

    return v0
.end method
