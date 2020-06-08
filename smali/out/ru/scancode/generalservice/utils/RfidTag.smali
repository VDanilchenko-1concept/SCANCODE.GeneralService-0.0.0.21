.class public Lru/scancode/generalservice/utils/RfidTag;
.super Ljava/lang/Object;
.source "RfidTag.java"


# static fields
.field private static final EPC:Ljava/lang/String; = "EPC"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "\u041e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u0441\u043e\u0437\u0434\u0430\u043d\u0438\u0438 xml-\u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430: "

.field private static final TABLE:Ljava/lang/String; = "Table"

.field private static final TAG:Ljava/lang/String; = "Tag"

.field private static final TID:Ljava/lang/String; = "TID"

.field private static final USER:Ljava/lang/String; = "USER"

.field private static final YES:Ljava/lang/String; = "yes"


# instance fields
.field private epc:Ljava/lang/String;

.field private rssi:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private valid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lru/scancode/generalservice/utils/RfidTag;->valid:I

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->rssi:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->tid:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lru/scancode/generalservice/utils/RfidTag;->epc:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lru/scancode/generalservice/utils/RfidTag;->rssi:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lru/scancode/generalservice/utils/RfidTag;->tid:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    return-void
.end method

.method public static getXMLTable(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 139
    :try_start_8
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Table"

    .line 141
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 144
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string v3, "indent"

    const-string v4, "yes"

    .line 145
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/scancode/generalservice/utils/RfidTag;

    const-string v4, "Tag"

    .line 149
    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "EPC"

    .line 151
    invoke-virtual {v3}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TID"

    .line 152
    invoke-virtual {v3}, Lru/scancode/generalservice/utils/RfidTag;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "USER"

    .line 153
    invoke-virtual {v3}, Lru/scancode/generalservice/utils/RfidTag;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2c

    .line 158
    :cond_5d
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 159
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 161
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML-\u0442\u0430\u0431\u043b\u0438\u0447\u043a\u0430 \u0441 \u043c\u0435\u0442\u043a\u0430\u043c\u0438: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8b} :catch_8e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8b} :catch_8c

    return-object p0

    :catch_8c
    move-exception p0

    goto :goto_8f

    :catch_8e
    move-exception p0

    .line 166
    :goto_8f
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u0441\u043e\u0437\u0434\u0430\u043d\u0438\u0438 xml-\u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430: "

    invoke-virtual {v0, v1, p0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXMLTable(Lru/scancode/generalservice/utils/RfidTag;)Ljava/lang/String;
    .registers 2

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v0}, Lru/scancode/generalservice/utils/RfidTag;->getXMLTable(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 101
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 103
    :cond_13
    check-cast p1, Lru/scancode/generalservice/utils/RfidTag;

    .line 105
    iget-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->epc:Ljava/lang/String;

    iget-object p1, p1, Lru/scancode/generalservice/utils/RfidTag;->epc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEpc()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->epc:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->rssi:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->tid:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    .line 84
    :cond_8
    iget-object v0, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    return-object v0
.end method

.method public increaseValid()V
    .registers 2

    .line 88
    iget v0, p0, Lru/scancode/generalservice/utils/RfidTag;->valid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/scancode/generalservice/utils/RfidTag;->valid:I

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lru/scancode/generalservice/utils/RfidTag;->rssi:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/scancode/generalservice/utils/RfidTag;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RSSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/scancode/generalservice/utils/RfidTag;->rssi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/scancode/generalservice/utils/RfidTag;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", USER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/scancode/generalservice/utils/RfidTag;->user:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
