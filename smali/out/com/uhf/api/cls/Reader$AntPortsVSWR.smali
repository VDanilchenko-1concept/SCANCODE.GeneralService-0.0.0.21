.class public Lcom/uhf/api/cls/Reader$AntPortsVSWR;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AntPortsVSWR"
.end annotation


# instance fields
.field public andid:I

.field public frecount:I

.field public power:S

.field public region:Lcom/uhf/api/cls/Reader$Region_Conf;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;

.field public vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 6

    .line 971
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->this$0:Lcom/uhf/api/cls/Reader;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    .line 972
    iput-object v1, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    const/4 v1, 0x0

    :goto_c
    if-lt v1, v0, :cond_f

    return-void

    .line 974
    :cond_f
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    new-instance v3, Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    invoke-direct {v3, p1}, Lcom/uhf/api/cls/Reader$FrequencyVSWR;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    .line 978
    :goto_4
    iget v3, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    if-lt v2, v3, :cond_9

    return-object v1

    .line 979
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->vswr:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v4, "%.2f"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
