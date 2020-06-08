.class synthetic Lcom/speedata/libuhf/XinLianQilian$2;
.super Ljava/lang/Object;
.source "XinLianQilian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/XinLianQilian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$uhf$api$cls$Reader$Region_Conf:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1622
    invoke-static {}, Lcom/uhf/api/cls/Reader$Region_Conf;->values()[Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/speedata/libuhf/XinLianQilian$2;->$SwitchMap$com$uhf$api$cls$Reader$Region_Conf:[I

    :try_start_9
    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Region_Conf;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian$2;->$SwitchMap$com$uhf$api$cls$Reader$Region_Conf:[I

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Region_Conf;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian$2;->$SwitchMap$com$uhf$api$cls$Reader$Region_Conf:[I

    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU3:Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Region_Conf;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
