.class Lcom/speedata/libuhf/XinLianQilian$1;
.super Ljava/lang/Object;
.source "XinLianQilian.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/XinLianQilian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/libuhf/XinLianQilian;


# direct methods
.method constructor <init>(Lcom/speedata/libuhf/XinLianQilian;)V
    .registers 2

    .line 1697
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1699
    :goto_0
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v0}, Lcom/speedata/libuhf/XinLianQilian;->access$000(Lcom/speedata/libuhf/XinLianQilian;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string v0, "ContentValues"

    const-string v1, "run: 1111111111111111111111"

    .line 1700
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1703
    monitor-enter p0

    .line 1705
    :try_start_16
    iget-object v3, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v3}, Lcom/speedata/libuhf/XinLianQilian;->access$100(Lcom/speedata/libuhf/XinLianQilian;)Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    move-result-object v3

    iget-object v3, v3, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->uants:[I

    .line 1706
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v4}, Lcom/speedata/libuhf/XinLianQilian;->access$000(Lcom/speedata/libuhf/XinLianQilian;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1707
    monitor-exit p0

    goto :goto_0

    :cond_28
    const-string v4, "ContentValues"

    const-string v5, "run: 2222222222222222222222222222"

    .line 1709
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    iget-boolean v4, v4, Lcom/speedata/libuhf/XinLianQilian;->nostop:Z

    if-eqz v4, :cond_3e

    .line 1711
    invoke-static {}, Lcom/speedata/libuhf/XinLianQilian;->access$200()Lcom/uhf/api/cls/Reader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/uhf/api/cls/Reader;->AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    goto :goto_58

    .line 1713
    :cond_3e
    invoke-static {}, Lcom/speedata/libuhf/XinLianQilian;->access$200()Lcom/uhf/api/cls/Reader;

    move-result-object v4

    iget-object v5, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    .line 1714
    invoke-static {v5}, Lcom/speedata/libuhf/XinLianQilian;->access$100(Lcom/speedata/libuhf/XinLianQilian;)Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    move-result-object v5

    iget-object v5, v5, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->uants:[I

    array-length v5, v5

    iget-object v6, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    .line 1715
    invoke-static {v6}, Lcom/speedata/libuhf/XinLianQilian;->access$100(Lcom/speedata/libuhf/XinLianQilian;)Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    move-result-object v6

    iget v6, v6, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->readtime:I

    int-to-short v6, v6

    .line 1713
    invoke-virtual {v4, v3, v5, v6, v1}, Lcom/uhf/api/cls/Reader;->TagInventory_Raw([IIS[I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 1717
    :goto_58
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_e2

    .line 1718
    aget v3, v1, v2

    if-lez v3, :cond_19d

    const/4 v3, 0x0

    .line 1719
    :goto_62
    aget v4, v1, v2

    if-ge v3, v4, :cond_19d

    .line 1720
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v4}, Lcom/speedata/libuhf/XinLianQilian;->access$000(Lcom/speedata/libuhf/XinLianQilian;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 1721
    monitor-exit p0

    return-void

    :cond_70
    const-string v4, "ContentValues"

    const-string v6, "run: 33333333333"

    .line 1723
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    new-instance v4, Lcom/uhf/api/cls/Reader$TAGINFO;

    invoke-static {}, Lcom/speedata/libuhf/XinLianQilian;->access$200()Lcom/uhf/api/cls/Reader;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v6}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1725
    iget-object v6, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    iget-boolean v6, v6, Lcom/speedata/libuhf/XinLianQilian;->nostop:Z

    if-eqz v6, :cond_92

    .line 1726
    invoke-static {}, Lcom/speedata/libuhf/XinLianQilian;->access$200()Lcom/uhf/api/cls/Reader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    goto :goto_9a

    .line 1728
    :cond_92
    invoke-static {}, Lcom/speedata/libuhf/XinLianQilian;->access$200()Lcom/uhf/api/cls/Reader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    .line 1731
    :goto_9a
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v6, v7, :cond_df

    .line 1732
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    .line 1733
    array-length v7, v6

    invoke-static {v6, v7}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->b2hexs([BI)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ContentValues"

    const-string v8, "run: 4444444444"

    .line 1734
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget v4, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1736
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    new-instance v8, Lcom/speedata/libuhf/bean/SpdInventoryData;

    invoke-direct {v8, v5, v6, v4}, Lcom/speedata/libuhf/bean/SpdInventoryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v4}, Lcom/speedata/libuhf/XinLianQilian;->access$300(Lcom/speedata/libuhf/XinLianQilian;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_ca

    .line 1739
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v4, v8}, Lcom/speedata/libuhf/XinLianQilian;->access$400(Lcom/speedata/libuhf/XinLianQilian;Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    goto :goto_df

    .line 1741
    :cond_ca
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1743
    iput v0, v4, Landroid/os/Message;->what:I

    .line 1744
    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    iget-object v6, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v6}, Lcom/speedata/libuhf/XinLianQilian;->access$300(Lcom/speedata/libuhf/XinLianQilian;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_df
    :goto_df
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_e2
    const-string v1, "ContentValues"

    const-string v2, "run: err"

    .line 1753
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x14

    const/4 v4, 0x2

    if-ne v3, v1, :cond_f2

    goto/16 :goto_173

    .line 1757
    :cond_f2
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_f9

    const/4 v0, 0x2

    goto/16 :goto_173

    .line 1759
    :cond_f9
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_100

    const/4 v0, 0x3

    goto/16 :goto_173

    .line 1761
    :cond_100
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_107

    const/4 v0, 0x4

    goto/16 :goto_173

    .line 1763
    :cond_107
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_10e

    const/4 v0, 0x5

    goto/16 :goto_173

    .line 1765
    :cond_10e
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_115

    const/4 v0, 0x6

    goto/16 :goto_173

    .line 1767
    :cond_115
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_11b

    const/4 v0, 0x7

    goto :goto_173

    .line 1769
    :cond_11b
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_122

    const/16 v0, 0x8

    goto :goto_173

    .line 1771
    :cond_122
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_129

    const/16 v0, 0x9

    goto :goto_173

    .line 1773
    :cond_129
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_130

    const/16 v0, 0xa

    goto :goto_173

    .line 1775
    :cond_130
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_137

    const/16 v0, 0xb

    goto :goto_173

    .line 1777
    :cond_137
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_13e

    const/16 v0, 0xc

    goto :goto_173

    .line 1779
    :cond_13e
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_145

    const/16 v0, 0xd

    goto :goto_173

    .line 1781
    :cond_145
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_14c

    const/16 v0, 0xe

    goto :goto_173

    .line 1783
    :cond_14c
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_153

    const/16 v0, 0xf

    goto :goto_173

    .line 1785
    :cond_153
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_15a

    const/16 v0, 0x10

    goto :goto_173

    .line 1787
    :cond_15a
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_161

    const/16 v0, 0x11

    goto :goto_173

    .line 1789
    :cond_161
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_168

    const/16 v0, 0x12

    goto :goto_173

    .line 1791
    :cond_168
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v0, :cond_16f

    const/16 v0, 0x13

    goto :goto_173

    .line 1793
    :cond_16f
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v0, 0x14

    .line 1798
    :goto_173
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v1}, Lcom/speedata/libuhf/XinLianQilian;->access$300(Lcom/speedata/libuhf/XinLianQilian;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_181

    .line 1799
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v0, v5}, Lcom/speedata/libuhf/XinLianQilian;->access$400(Lcom/speedata/libuhf/XinLianQilian;Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    goto :goto_198

    .line 1801
    :cond_181
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v1}, Lcom/speedata/libuhf/XinLianQilian;->access$300(Lcom/speedata/libuhf/XinLianQilian;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-static {v2}, Lcom/speedata/libuhf/XinLianQilian;->access$300(Lcom/speedata/libuhf/XinLianQilian;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1803
    :goto_198
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$1;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-virtual {v0}, Lcom/speedata/libuhf/XinLianQilian;->inventory_stop()I

    .line 1805
    :cond_19d
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1a0
    move-exception v0

    monitor-exit p0
    :try_end_1a2
    .catchall {:try_start_16 .. :try_end_1a2} :catchall_1a0

    throw v0

    :cond_1a3
    return-void
.end method
