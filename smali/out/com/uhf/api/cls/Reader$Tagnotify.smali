.class Lcom/uhf/api/cls/Reader$Tagnotify;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tagnotify"
.end annotation


# instance fields
.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V
    .registers 3

    .line 2597
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2598
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v1, p0

    .line 2603
    monitor-enter p0

    .line 2608
    :try_start_3
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/uhf/api/cls/Reader;->m_IsReadThRunning:Z

    .line 2615
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v0, v0, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    .line 2617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2620
    sget-object v5, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 2621
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v6, v6, Lcom/uhf/api/cls/BackReadOption;->IsGPITrigger:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3f

    .line 2623
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v0, v0, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v0, v0, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v6, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v0, v6, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 2625
    :goto_2f
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v6, v6, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-wide/from16 v17, v3

    move v3, v0

    move-object v0, v6

    move-object v6, v5

    move-wide/from16 v4, v17

    goto :goto_44

    :cond_3f
    move-object v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    .line 2628
    :catch_44
    :cond_44
    :goto_44
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v10, v10, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-nez v10, :cond_50

    .line 2833
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iput-boolean v7, v0, Lcom/uhf/api/cls/Reader;->m_IsReadThRunning:Z

    .line 2603
    monitor-exit p0

    return-void

    :cond_50
    if-eqz v8, :cond_29b

    .line 2633
    sget-object v10, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    const/4 v11, 0x2

    if-ne v6, v10, :cond_135

    .line 2634
    new-instance v10, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v10}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 2636
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v13, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13, v10}, Lcom/uhf/api/cls/JniModuleAPI;->Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I

    move-result v12

    .line 2637
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v13, v12}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v12

    sget-object v13, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v12, v13, :cond_75

    goto :goto_44

    .line 2640
    :cond_75
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    .line 2641
    iget-object v13, v0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    .line 2640
    invoke-static {v12, v13, v10}, Lcom/uhf/api/cls/Reader;->access$1(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 2645
    iget-object v9, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v9, v9, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a4

    .line 2646
    iget-object v9, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v9, v9, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_91
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_98

    goto :goto_a4

    :cond_98
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 2647
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v11, v13, v10, v2}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_91

    :cond_a4
    :goto_a4
    const/4 v9, 0x1

    goto :goto_dc

    .line 2651
    :cond_a6
    iget-object v13, v0, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v14, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v13, v14, :cond_dc

    .line 2652
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    .line 2653
    iget-object v13, v0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    .line 2652
    invoke-static {v12, v13, v10}, Lcom/uhf/api/cls/Reader;->access$1(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v12

    if-eqz v12, :cond_dc

    .line 2657
    iget-object v9, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v9, v9, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_db

    .line 2658
    iget-object v9, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v9, v9, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_cf

    goto :goto_db

    :cond_cf
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 2659
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v13, v14, v10, v11}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_c8

    :cond_db
    :goto_db
    const/4 v9, 0x2

    :cond_dc
    :goto_dc
    if-eqz v12, :cond_44

    .line 2667
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_107

    .line 2668
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_f7

    goto :goto_107

    :cond_f7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;

    .line 2670
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    .line 2671
    sget-object v12, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StartInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    .line 2672
    sget-object v13, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    .line 2669
    invoke-interface {v10, v11, v12, v13}, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;->GpiTriggerBoundary(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiTriggerBoundaryType;Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;)V

    goto :goto_f0

    :cond_107
    :goto_107
    if-eqz v3, :cond_10c

    .line 2677
    sget-object v6, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    goto :goto_112

    .line 2679
    :cond_10c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2681
    sget-object v6, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 2684
    :goto_112
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_29b

    .line 2685
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    .line 2686
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v13, v13, Lcom/uhf/api/cls/Reader;->m_BackReadAntsCnt:I

    .line 2687
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v14, v14, Lcom/uhf/api/cls/Reader;->m_FastReadOption:I

    .line 2685
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReading(I[III)I

    goto/16 :goto_29b

    .line 2692
    :cond_135
    sget-object v10, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    if-ne v6, v10, :cond_1d5

    .line 2693
    new-instance v10, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v10}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 2695
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v13, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13, v10}, Lcom/uhf/api/cls/JniModuleAPI;->Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I

    move-result v12

    .line 2696
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v13, v12}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v12

    sget-object v13, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v12, v13, :cond_158

    goto/16 :goto_44

    .line 2699
    :cond_158
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    .line 2700
    iget-object v13, v0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    .line 2699
    invoke-static {v12, v13, v10}, Lcom/uhf/api/cls/Reader;->access$1(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v12

    if-eqz v12, :cond_29b

    .line 2703
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_187

    .line 2704
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_174
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_17b

    goto :goto_187

    :cond_17b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 2705
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v12, v13, v10, v11}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_174

    .line 2709
    :cond_187
    :goto_187
    sget-object v6, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 2711
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_1ab

    .line 2712
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReading(I)I

    move-result v10

    .line 2713
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v10

    sget-object v11, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v10, v11, :cond_1ab

    goto/16 :goto_44

    .line 2717
    :cond_1ab
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_44

    .line 2718
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1bd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1c5

    goto/16 :goto_44

    :cond_1c5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;

    .line 2720
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    .line 2721
    sget-object v13, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StopInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    .line 2722
    sget-object v14, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    .line 2719
    invoke-interface {v11, v12, v13, v14}, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;->GpiTriggerBoundary(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiTriggerBoundaryType;Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;)V

    goto :goto_1bd

    .line 2728
    :cond_1d5
    sget-object v10, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    if-ne v6, v10, :cond_29b

    .line 2729
    iget-object v10, v0, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v12, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v10, v12, :cond_23b

    .line 2730
    new-instance v10, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v10}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 2732
    new-instance v12, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v12}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 2735
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v13, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v14, v14, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v14, v14, v7

    invoke-virtual {v13, v14, v10}, Lcom/uhf/api/cls/JniModuleAPI;->Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I

    move-result v13

    .line 2736
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v14, v13}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v13

    sget-object v14, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v13, v14, :cond_203

    goto/16 :goto_44

    :cond_203
    if-ne v9, v2, :cond_208

    .line 2739
    iget-object v12, v0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    goto :goto_20c

    :cond_208
    if-ne v9, v11, :cond_20c

    .line 2741
    iget-object v12, v0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    .line 2742
    :cond_20c
    :goto_20c
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v12, v10}, Lcom/uhf/api/cls/Reader;->access$1(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v11

    if-eqz v11, :cond_23b

    .line 2743
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_23b

    .line 2744
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_226
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_22d

    goto :goto_23b

    :cond_22d
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 2745
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    rsub-int/lit8 v14, v9, 0x3

    invoke-interface {v12, v13, v10, v14}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_226

    .line 2752
    :cond_23b
    :goto_23b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    .line 2753
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v12, v12, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget v12, v12, Lcom/uhf/api/cls/GPITrigger;->StopTriggerTimeout:I

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_29b

    .line 2754
    sget-object v6, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 2756
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_271

    .line 2757
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReading(I)I

    move-result v10

    .line 2758
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v10

    sget-object v11, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v10, v11, :cond_271

    goto/16 :goto_44

    .line 2762
    :cond_271
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_44

    .line 2763
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_283
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_28b

    goto/16 :goto_44

    :cond_28b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;

    .line 2765
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    .line 2766
    sget-object v13, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StopInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    .line 2767
    sget-object v14, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByTimeout:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    .line 2764
    invoke-interface {v11, v12, v13, v14}, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;->GpiTriggerBoundary(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiTriggerBoundaryType;Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;)V

    goto :goto_283

    :cond_29b
    :goto_29b
    new-array v15, v2, [I

    .line 2780
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_2dd

    .line 2782
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11, v15}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncGetTagCount(I[I)I

    move-result v10

    .line 2783
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v11

    sget-object v12, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v11, v12, :cond_2da

    .line 2784
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " 2209"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$2(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    goto/16 :goto_44

    :cond_2da
    move-object/from16 v16, v15

    goto :goto_307

    .line 2788
    :cond_2dd
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    .line 2789
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v13, v13, Lcom/uhf/api/cls/Reader;->m_BackReadAntsCnt:I

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v14, v14, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-short v14, v14, Lcom/uhf/api/cls/BackReadOption;->ReadDuration:S

    move-object/from16 v16, v15

    .line 2788
    invoke-virtual/range {v10 .. v15}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result v10

    .line 2791
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v11

    sget-object v12, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v11, v12, :cond_307

    goto/16 :goto_44

    .line 2796
    :cond_307
    :goto_307
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    const/4 v12, 0x0

    .line 2797
    :goto_30d
    aget v13, v16, v7

    if-lt v12, v13, :cond_312

    goto :goto_371

    .line 2798
    :cond_312
    new-instance v13, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v13, v14}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2799
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v14, v14, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-eqz v14, :cond_36b

    .line 2801
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v14, v14, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v14, v14, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v14, :cond_353

    .line 2802
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v15, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v15, v13}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/uhf/api/cls/Reader;->access$3(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v14

    sget-object v15, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v14, v15, :cond_368

    .line 2803
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " 2226"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/uhf/api/cls/Reader;->access$2(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    goto :goto_3b1

    .line 2807
    :cond_353
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v10, v13}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v10

    invoke-static {v10}, Lcom/uhf/api/cls/Reader$READER_ERR;->access$2(Lcom/uhf/api/cls/Reader$READER_ERR;)I

    move-result v10

    .line 2808
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v14, v10}, Lcom/uhf/api/cls/Reader;->access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v14

    sget-object v15, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v14, v15, :cond_368

    goto :goto_3b1

    .line 2811
    :cond_368
    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2813
    :cond_36b
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v13, v13, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-nez v13, :cond_3b1

    .line 2816
    :goto_371
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 2817
    invoke-virtual {v11, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 2818
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3a5

    array-length v11, v10

    if-lez v11, :cond_3a5

    .line 2820
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_392
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_399

    goto :goto_3a5

    :cond_399
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uhf/api/cls/ReadListener;

    .line 2821
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v12, v13, v10}, Lcom/uhf/api/cls/ReadListener;->tagRead(Lcom/uhf/api/cls/Reader;[Lcom/uhf/api/cls/Reader$TAGINFO;)V
    :try_end_3a4
    .catchall {:try_start_3 .. :try_end_3a4} :catchall_3b5

    goto :goto_392

    .line 2826
    :cond_3a5
    :goto_3a5
    :try_start_3a5
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget v10, v10, Lcom/uhf/api/cls/BackReadOption;->ReadInterval:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3af
    .catch Ljava/lang/InterruptedException; {:try_start_3a5 .. :try_end_3af} :catch_44
    .catchall {:try_start_3a5 .. :try_end_3af} :catchall_3b5

    goto/16 :goto_44

    :cond_3b1
    :goto_3b1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_30d

    :catchall_3b5
    move-exception v0

    .line 2603
    :try_start_3b6
    monitor-exit p0
    :try_end_3b7
    .catchall {:try_start_3b6 .. :try_end_3b7} :catchall_3b5

    goto :goto_3b9

    :goto_3b8
    throw v0

    :goto_3b9
    goto :goto_3b8
.end method
