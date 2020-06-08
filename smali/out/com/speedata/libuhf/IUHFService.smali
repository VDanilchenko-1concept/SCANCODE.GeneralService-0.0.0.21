.class public interface abstract Lcom/speedata/libuhf/IUHFService;
.super Ljava/lang/Object;
.source "IUHFService.java"


# static fields
.field public static final EPC_A:I = 0x1

.field public static final FAST_MODE:I = 0x0

.field public static final LOW_POWER_MODE:I = 0x2

.field public static final POWERCTL:Ljava/lang/String; = "/sys/class/misc/mtgpio/pin"

.field public static final REGION_CHINA_840_845:I = 0x0

.field public static final REGION_CHINA_902_928:I = 0x2

.field public static final REGION_CHINA_920_925:I = 0x1

.field public static final REGION_EURO_865_868:I = 0x3

.field public static final RESERVED_A:I = 0x0

.field public static final SERIALPORT:Ljava/lang/String; = "/dev/ttyMT2"

.field public static final SERIALPORT0:Ljava/lang/String; = "/dev/ttyMT0"

.field public static final SERIALPORT_SD100:Ljava/lang/String; = "/dev/ttyHSL2"

.field public static final SERIALPORT_SD60:Ljava/lang/String; = "/dev/ttyMT0"

.field public static final SMART_MODE:I = 0x1

.field public static final TID_A:I = 0x2

.field public static final USER_A:I = 0x3

.field public static final USER_MODE:I = 0x3


# virtual methods
.method public abstract GetLastDetailError()Ljava/lang/String;
.end method

.method public abstract cancelMask()I
.end method

.method public abstract closeDev()V
.end method

.method public abstract enableEngTest(I)I
.end method

.method public abstract getAntennaPower()I
.end method

.method public abstract getDynamicAlgorithm(Lcom/uhf/structures/DynamicQParams;)I
.end method

.method public abstract getFixedAlgorithm(Lcom/uhf/structures/FixedQParams;)I
.end method

.method public abstract getFreqRegion()I
.end method

.method public abstract getGen2AllValue()[I
.end method

.method public abstract getInvMode(I)I
.end method

.method public abstract getMask()Lcom/uhf/structures/SelectCriteria;
.end method

.method public abstract getQueryTagGroup()I
.end method

.method public abstract inventoryStart()V
.end method

.method public abstract inventoryStop()V
.end method

.method public abstract inventory_start()V
.end method

.method public abstract inventory_start(Landroid/os/Handler;)V
.end method

.method public abstract inventory_stop()I
.end method

.method public abstract mask(III[B)I
.end method

.method public abstract openDev()I
.end method

.method public abstract readArea(IIILjava/lang/String;)I
.end method

.method public abstract readMonzaQtTag(I[BIII)I
.end method

.method public abstract readMonzaQtTagSync(I[BIIIILcom/uhf/structures/RW_Params;)I
.end method

.method public abstract read_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract read_area(IIILjava/lang/String;)[B
.end method

.method public abstract reg_handler(Landroid/os/Handler;)V
.end method

.method public abstract selectCard(ILjava/lang/String;Z)I
.end method

.method public abstract selectCard(I[BZ)I
.end method

.method public abstract setAntennaPower(I)I
.end method

.method public abstract setDynamicAlgorithm()I
.end method

.method public abstract setDynamicAlgorithm(IIIIII)I
.end method

.method public abstract setFixedAlgorithm(IIII)I
.end method

.method public abstract setFreqRegion(I)I
.end method

.method public abstract setFrequency(D)I
.end method

.method public abstract setGen2Blf(I)I
.end method

.method public abstract setGen2Code(I)I
.end method

.method public abstract setGen2MaxLen(I)I
.end method

.method public abstract setGen2QValue(I)I
.end method

.method public abstract setGen2Target(I)I
.end method

.method public abstract setGen2Tari(I)I
.end method

.method public abstract setGen2WriteMode(I)I
.end method

.method public abstract setInvMode(III)I
.end method

.method public abstract setKill(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setLock(IILjava/lang/String;)I
.end method

.method public abstract setMonzaQtTagMode(II[B)I
.end method

.method public abstract setOnInventoryListener(Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;)V
.end method

.method public abstract setOnReadListener(Lcom/speedata/libuhf/interfaces/OnSpdReadListener;)V
.end method

.method public abstract setOnWriteListener(Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;)V
.end method

.method public abstract setPassword(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setQT([BIIII)I
.end method

.method public abstract setQueryTagGroup(III)I
.end method

.method public abstract set_Password(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setlock(IILjava/lang/String;)I
.end method

.method public abstract startFastMode()I
.end method

.method public abstract stopFastMode()I
.end method

.method public abstract writeArea(IIILjava/lang/String;[B)I
.end method

.method public abstract writeMonzaQtTag(I[BIII[B)I
.end method

.method public abstract writeMonzaQtTagSync(I[BIII[BILcom/uhf/structures/RW_Params;)I
.end method

.method public abstract write_area(IIILjava/lang/String;[B)I
.end method

.method public abstract write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
