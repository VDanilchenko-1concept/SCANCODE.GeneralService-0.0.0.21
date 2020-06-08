.class public Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;
.super Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;
.source "SpeedataRfidManager.java"


# static fields
.field private static final PASSWD:Ljava/lang/String; = "00000000"


# instance fields
.field private inventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

.field private iuhfService:Lcom/speedata/libuhf/IUHFService;

.field private readListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

.field private rfidTagIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;"
        }
    .end annotation
.end field

.field rfidTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 117
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    .line 37
    new-instance p1, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$aIqsoRN-UajWQ_Zgh0d-glj96mA;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$aIqsoRN-UajWQ_Zgh0d-glj96mA;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->readListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    .line 83
    new-instance p1, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$DHBJ-V2UHuMQX3ytrZQpNts-dOc;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$DHBJ-V2UHuMQX3ytrZQpNts-dOc;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->inventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    return-void
.end method

.method static synthetic access$000(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method private readUserData(Ljava/lang/String;)V
    .registers 6

    .line 121
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/speedata/libuhf/IUHFService;->selectCard(ILjava/lang/String;Z)I

    .line 122
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {v0, v1, p1, v1}, Lcom/speedata/libuhf/IUHFService;->selectCard(ILjava/lang/String;Z)I

    .line 124
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$oTq21DkzjBJwVelwfkPKo3fDpNA;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$oTq21DkzjBJwVelwfkPKo3fDpNA;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public closeDevice()V
    .registers 3

    .line 190
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    if-eqz v0, :cond_10

    .line 191
    invoke-interface {v0}, Lcom/speedata/libuhf/IUHFService;->inventoryStop()V

    .line 192
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {v0}, Lcom/speedata/libuhf/IUHFService;->closeDev()V

    .line 193
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->closeUHFService()V

    goto :goto_19

    .line 196
    :cond_10
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "UhfService is null 2"

    invoke-virtual {v0, v1}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;)V

    .line 199
    :goto_19
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public synthetic lambda$new$0$SpeedataRfidManager(Lcom/speedata/libuhf/bean/SpdReadData;)V
    .registers 8

    .line 39
    invoke-virtual {p1}, Lcom/speedata/libuhf/bean/SpdReadData;->getEPCData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/speedata/libuhf/bean/SpdReadData;->getEPCLen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/speedata/libuhf/utils/StringUtils;->byteToHexString([BI)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/speedata/libuhf/bean/SpdReadData;->getReadData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/speedata/libuhf/bean/SpdReadData;->getDataLen()I

    move-result p1

    invoke-static {v1, p1}, Lcom/speedata/libuhf/utils/StringUtils;->byteToHexString([BI)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc

    .line 43
    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u0440\u0438\u0448\u043b\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u043e\u0442 \u043c\u0435\u0442\u043a\u0438 EPC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043b\u0438 userdata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/scancode/generalservice/utils/RfidTag;

    .line 51
    invoke-virtual {v2}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 53
    invoke-virtual {v2, p1}, Lru/scancode/generalservice/utils/RfidTag;->setUser(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0417\u0430\u043f\u043e\u043b\u043d\u0435\u043d\u043d\u0430\u044f \u043c\u0435\u0442\u043a\u0430: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->currentReadMode:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    sget-object v4, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->ONE:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    invoke-virtual {v3, v4}, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 58
    invoke-virtual {p0, v2}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendReadRfidTag(Lru/scancode/generalservice/utils/RfidTag;)V

    goto :goto_cd

    .line 63
    :cond_89
    iget-object v2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTagIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 67
    iget-object v2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTagIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/scancode/generalservice/utils/RfidTag;

    .line 69
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0435\u0441\u0442\u044c \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0430\u044f \u043c\u0435\u0442\u043a\u0430, \u0441\u0447\u0438\u0442\u044b\u0432\u0430\u0435\u043c EPC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->readUserData(Ljava/lang/String;)V

    goto :goto_4a

    .line 74
    :cond_bd
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v2

    const-string v3, "\u0412\u0441\u0435 \u043c\u0435\u0442\u043a\u0438 \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043d\u044b, \u043d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043a\u043b\u0438\u0435\u043d\u0442\u0443"

    invoke-virtual {v2, p0, v3}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-virtual {p0, v2}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendReadAllRfidTag(Ljava/util/List;)V

    goto/16 :goto_4a

    :cond_cd
    :goto_cd
    return-void
.end method

.method public synthetic lambda$new$1$SpeedataRfidManager(Lcom/speedata/libuhf/bean/SpdInventoryData;)V
    .registers 6

    const/4 v0, 0x0

    .line 87
    :goto_1
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 89
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/scancode/generalservice/utils/RfidTag;

    .line 91
    iget-object v2, p1, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    invoke-virtual {v1}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 93
    invoke-virtual {p1}, Lcom/speedata/libuhf/bean/SpdInventoryData;->getRssi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/scancode/generalservice/utils/RfidTag;->setRssi(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Lru/scancode/generalservice/utils/RfidTag;->increaseValid()V

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_65

    .line 103
    new-instance v0, Lru/scancode/generalservice/utils/RfidTag;

    iget-object v1, p1, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    iget-object v2, p1, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    iget-object p1, p1, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lru/scancode/generalservice/utils/RfidTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz p1, :cond_4d

    .line 108
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    invoke-interface {p1, v0}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onGetTag(Lru/scancode/generalservice/utils/RfidTag;)V

    .line 112
    :cond_4d
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find new RFID EPC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method public synthetic lambda$openDevice$3$SpeedataRfidManager()V
    .registers 10

    .line 144
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {v0}, Lcom/speedata/libuhf/IUHFService;->openDev()I

    move-result v0

    if-nez v0, :cond_63

    .line 145
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Lcom/speedata/libuhf/IUHFService;->setQueryTagGroup(III)I

    .line 146
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {v0}, Lcom/speedata/libuhf/IUHFService;->setDynamicAlgorithm()I

    .line 148
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-interface {v0, v2, v1, v3}, Lcom/speedata/libuhf/IUHFService;->setInvMode(III)I

    .line 150
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->inventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    invoke-interface {v0, v1}, Lcom/speedata/libuhf/IUHFService;->setOnInventoryListener(Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;)V

    .line 151
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->readListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    invoke-interface {v0, v1}, Lcom/speedata/libuhf/IUHFService;->setOnReadListener(Lcom/speedata/libuhf/interfaces/OnSpdReadListener;)V

    .line 155
    new-instance v0, Lcom/uhf/structures/DynamicQParams;

    invoke-direct {v0}, Lcom/uhf/structures/DynamicQParams;-><init>()V

    .line 156
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {v1, v0}, Lcom/speedata/libuhf/IUHFService;->getDynamicAlgorithm(Lcom/uhf/structures/DynamicQParams;)I

    .line 158
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uhf/structures/DynamicQParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x4

    invoke-interface/range {v2 .. v8}, Lcom/speedata/libuhf/IUHFService;->setDynamicAlgorithm(IIIIII)I

    .line 162
    new-instance v0, Lcom/uhf/structures/DynamicQParams;

    invoke-direct {v0}, Lcom/uhf/structures/DynamicQParams;-><init>()V

    .line 163
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {v1, v0}, Lcom/speedata/libuhf/IUHFService;->getDynamicAlgorithm(Lcom/uhf/structures/DynamicQParams;)I

    .line 165
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uhf/structures/DynamicQParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendConnected()V

    goto :goto_68

    :cond_63
    const-string v0, "open device error"

    .line 169
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendError(Ljava/lang/String;)V

    .line 172
    :goto_68
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->connect_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->connect_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public synthetic lambda$readUserData$2$SpeedataRfidManager()V
    .registers 6

    .line 124
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x20

    const-string v4, "00000000"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/speedata/libuhf/IUHFService;->readArea(IIILjava/lang/String;)I

    return-void
.end method

.method public openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V
    .registers 6

    .line 130
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    const/4 p1, 0x0

    .line 132
    invoke-static {p1}, Lcom/speedata/libuhf/UHFManager;->setStipulationLevel(I)V

    .line 135
    :try_start_6
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/speedata/libuhf/UHFManager;->getUHFService(Landroid/content/Context;)Lcom/speedata/libuhf/IUHFService;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    .line 136
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->connect_timer:Ljava/util/Timer;

    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager$1;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager$1;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$JelSU5vwFE0ykmfVcNfW94lPGwI;

    invoke-direct {p2, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$JelSU5vwFE0ykmfVcNfW94lPGwI;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_27

    goto :goto_44

    :catch_27
    move-exception p1

    .line 180
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    const-string v0, "UhfService is null 1"

    invoke-virtual {p2, v0}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 183
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    const-string v0, "\u0441\u0442\u0440\u0430\u043d\u043d\u043e\u0435 \u043f\u0430\u0434\u0435\u043d\u0438\u0435 \u043d\u0430 \u043a\u0430\u043a\u043e\u0439-\u0442\u043e \u0441\u0442\u0440\u043e\u043a\u0435"

    invoke-virtual {p2, p0, v0, p1}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public read(Ljava/lang/String;Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 5

    .line 229
    iput-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    .line 231
    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {p2}, Lcom/speedata/libuhf/IUHFService;->inventory_stop()I

    const-wide/16 v0, 0x64

    .line 232
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    if-eqz p1, :cond_16

    .line 235
    sget-object p2, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->ONE:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    iput-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->currentReadMode:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    .line 236
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->readUserData(Ljava/lang/String;)V

    goto :goto_42

    .line 238
    :cond_16
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTagIterator:Ljava/util/ListIterator;

    .line 240
    sget-object p1, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->ALL:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->currentReadMode:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    .line 242
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTagIterator:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 244
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "\u0421\u0447\u0438\u0442\u044b\u0432\u0430\u0435\u043c \u043f\u0435\u0440\u0432\u0443\u044e \u043c\u0435\u0442\u043a\u0443"

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTagIterator:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/scancode/generalservice/utils/RfidTag;

    invoke-virtual {p1}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->readUserData(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public startScan(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 5

    .line 204
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    .line 206
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->rfidTags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 208
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    if-nez p1, :cond_15

    .line 209
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string v0, "UhfService is null 4"

    invoke-virtual {p1, v0}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;)V

    goto :goto_21

    :cond_15
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 211
    invoke-interface {p1, v0, v2, v1}, Lcom/speedata/libuhf/IUHFService;->selectCard(ILjava/lang/String;Z)I

    .line 212
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    invoke-interface {p1}, Lcom/speedata/libuhf/IUHFService;->inventoryStart()V

    :goto_21
    return-void
.end method

.method public stopScan()V
    .registers 3

    .line 218
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    if-nez v0, :cond_e

    .line 220
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "UhfService is null 3"

    invoke-virtual {v0, v1}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;)V

    goto :goto_11

    .line 223
    :cond_e
    invoke-interface {v0}, Lcom/speedata/libuhf/IUHFService;->inventoryStop()V

    :goto_11
    return-void
.end method

.method public write(Ljava/lang/String;IILjava/lang/String;ILru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 13

    .line 253
    iget-object p6, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    if-nez p6, :cond_e

    .line 254
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "UhfService is null 6"

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x1

    .line 258
    invoke-interface {p6, v0, p1, v0}, Lcom/speedata/libuhf/IUHFService;->selectCard(ILjava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_2a

    .line 263
    invoke-static {p4}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v5

    .line 265
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    const-string v4, "00000000"

    move v1, p5

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/speedata/libuhf/IUHFService;->writeArea(IIILjava/lang/String;[B)I

    move-result p1

    if-eqz p1, :cond_45

    .line 269
    invoke-virtual {p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendWriteComplete()V

    goto :goto_45

    .line 275
    :cond_2a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->context:Landroid/content/Context;

    const p4, 0x7f100062

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->sendError(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method
