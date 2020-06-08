.class public Ljxl/biff/drawing/EscherDisplay;
.super Ljava/lang/Object;
.source "EscherDisplay.java"


# instance fields
.field private stream:Ljxl/biff/drawing/EscherStream;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->stream:Ljxl/biff/drawing/EscherStream;

    .line 52
    iput-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    return-void
.end method

.method private displayContainer(Ljxl/biff/drawing/EscherContainer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayRecord(Ljxl/biff/drawing/EscherRecord;I)V

    add-int/lit8 p2, p2, 0x1

    .line 82
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object p1

    const/4 v0, 0x0

    .line 84
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 86
    aget-object v1, p1, v0

    .line 87
    invoke-virtual {v1}, Ljxl/biff/drawing/EscherRecord;->getEscherData()Ljxl/biff/drawing/EscherRecordData;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 89
    check-cast v1, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {p0, v1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayContainer(Ljxl/biff/drawing/EscherContainer;I)V

    goto :goto_22

    .line 93
    :cond_1f
    invoke-direct {p0, v1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayRecord(Ljxl/biff/drawing/EscherRecord;I)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_25
    return-void
.end method

.method private displayRecord(Ljxl/biff/drawing/EscherRecord;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p2}, Ljxl/biff/drawing/EscherDisplay;->indent(I)V

    .line 110
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object p1

    .line 113
    iget-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecordType;->getValue()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_2f

    .line 119
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dgg Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 122
    :cond_2f
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_41

    .line 124
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "BStore Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 127
    :cond_41
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_53

    .line 129
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dg Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 132
    :cond_53
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_65

    .line 134
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Spgr Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 137
    :cond_65
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_77

    .line 139
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Sp Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 142
    :cond_77
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_89

    .line 144
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dgg"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 147
    :cond_89
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_9b

    .line 149
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Bse"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 152
    :cond_9b
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_ad

    .line 154
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dg"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 157
    :cond_ad
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_bf

    .line 159
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Spgr"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_131

    .line 162
    :cond_bf
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_d0

    .line 164
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Sp"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_131

    .line 167
    :cond_d0
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_e1

    .line 169
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Opt"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_131

    .line 172
    :cond_e1
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_f2

    .line 174
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Client Anchor"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_131

    .line 177
    :cond_f2
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_103

    .line 179
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Client Data"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_131

    .line 182
    :cond_103
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_114

    .line 184
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Client Text Box"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_131

    .line 187
    :cond_114
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_125

    .line 189
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Split Menu Colors"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_131

    .line 194
    :cond_125
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "???"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    :goto_131
    return-void
.end method

.method private indent(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_f

    .line 209
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method


# virtual methods
.method public display()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->stream:Ljxl/biff/drawing/EscherStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 63
    new-instance v1, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 64
    invoke-direct {p0, v1, v2}, Ljxl/biff/drawing/EscherDisplay;->displayContainer(Ljxl/biff/drawing/EscherContainer;I)V

    return-void
.end method
