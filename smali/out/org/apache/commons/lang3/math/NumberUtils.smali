.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    const/4 v2, -0x1

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 49
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 51
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 55
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 57
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 59
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const/high16 v0, -0x40800000    # -1.0f

    .line 71
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(BB)I
    .registers 2

    sub-int/2addr p0, p1

    return p0
.end method

.method public static compare(II)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static compare(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 p0, -0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static compare(SS)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 987
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 990
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 997
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 995
    :cond_1c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid number."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_33
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0xa

    const-string v1, "-"

    .line 954
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    const-string v1, "0x"

    .line 958
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/16 v4, 0x10

    if-nez v1, :cond_45

    const-string v1, "0X"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_45

    :cond_26
    const-string v1, "#"

    .line 961
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_31
    const-string v1, "0"

    .line 964
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v4, v2, 0x1

    if-le v1, v4, :cond_49

    const/16 v0, 0x8

    move v2, v4

    goto :goto_49

    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x2

    :goto_47
    const/16 v0, 0x10

    .line 969
    :cond_49
    :goto_49
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v3, :cond_58

    .line 970
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    :cond_58
    return-object v1
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 897
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 881
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 916
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 934
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 654
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24e

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "0x"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0X"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, "-0x"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "-0X"

    aput-object v6, v2, v3

    const/4 v3, 0x4

    const-string v6, "#"

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v6, "-#"

    aput-object v6, v2, v3

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v1, :cond_3f

    .line 660
    aget-object v6, v2, v3

    .line 661
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 662
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_40

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    if-lez v1, :cond_7e

    move v0, v1

    .line 668
    :goto_43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 669
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v2, 0x30

    if-ne v4, v2, :cond_56

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 676
    :cond_56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v0, 0x10

    if-gt v1, v0, :cond_79

    const/16 v2, 0x37

    if-ne v1, v0, :cond_66

    if-le v4, v2, :cond_66

    goto :goto_79

    :cond_66
    const/16 v0, 0x8

    if-gt v1, v0, :cond_74

    if-ne v1, v0, :cond_6f

    if-le v4, v2, :cond_6f

    goto :goto_74

    .line 683
    :cond_6f
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 681
    :cond_74
    :goto_74
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 678
    :cond_79
    :goto_79
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 685
    :cond_7e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    .line 689
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v6, 0x65

    .line 690
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x45

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    const-string v7, " is not a valid number."

    const/4 v8, -0x1

    if-le v3, v8, :cond_d1

    if-le v6, v8, :cond_c6

    if-lt v6, v3, :cond_b1

    .line 696
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v6, v9, :cond_b1

    add-int/lit8 v9, v3, 0x1

    .line 699
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_cc

    .line 697
    :cond_b1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c6
    add-int/lit8 v9, v3, 0x1

    .line 701
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 703
    :goto_cc
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f8

    :cond_d1
    if-le v6, v8, :cond_f3

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v6, v3, :cond_de

    .line 709
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f7

    .line 707
    :cond_de
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_f3
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_f7
    move-object v9, v0

    .line 715
    :goto_f8
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v10, :cond_1cc

    if-eq v1, v2, :cond_1cc

    if-le v6, v8, :cond_116

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v6, v2, :cond_116

    add-int/2addr v6, v5

    .line 717
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 722
    :cond_116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12d

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12d

    const/4 v3, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v3, 0x0

    :goto_12e
    const/16 v6, 0x44

    if-eq v1, v6, :cond_19c

    const/16 v6, 0x46

    if-eq v1, v6, :cond_187

    const/16 v6, 0x4c

    if-eq v1, v6, :cond_146

    const/16 v6, 0x64

    if-eq v1, v6, :cond_19c

    const/16 v6, 0x66

    if-eq v1, v6, :cond_187

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1b7

    :cond_146
    if-nez v9, :cond_172

    if-nez v0, :cond_172

    .line 729
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_162

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_162

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_168

    :cond_162
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 731
    :cond_168
    :try_start_168
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_16c
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_16c} :catch_16d

    return-object p0

    .line 735
    :catch_16d
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 738
    :cond_172
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_187
    :try_start_187
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_19c

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_195
    .catch Ljava/lang/NumberFormatException; {:try_start_187 .. :try_end_195} :catch_19c

    cmpl-float v1, v1, v11

    if-nez v1, :cond_19b

    if-eqz v3, :cond_19c

    :cond_19b
    return-object v0

    .line 756
    :catch_19c
    :cond_19c
    :try_start_19c
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_1b2

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1
    :try_end_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_19c .. :try_end_1aa} :catch_1b2

    float-to-double v4, v1

    cmpl-double v1, v4, v12

    if-nez v1, :cond_1b1

    if-eqz v3, :cond_1b2

    :cond_1b1
    return-object v0

    .line 764
    :catch_1b2
    :cond_1b2
    :try_start_1b2
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_1b6
    .catch Ljava/lang/NumberFormatException; {:try_start_1b2 .. :try_end_1b6} :catch_1b7

    return-object p0

    .line 770
    :catch_1b7
    :cond_1b7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1cc
    if-le v6, v8, :cond_1de

    .line 776
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge v6, v1, :cond_1de

    add-int/2addr v6, v5

    .line 777
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1de
    if-nez v9, :cond_1f1

    if-nez v0, :cond_1f1

    .line 784
    :try_start_1e2
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1e6
    .catch Ljava/lang/NumberFormatException; {:try_start_1e2 .. :try_end_1e6} :catch_1e7

    return-object p0

    .line 789
    :catch_1e7
    :try_start_1e7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_1eb
    .catch Ljava/lang/NumberFormatException; {:try_start_1e7 .. :try_end_1eb} :catch_1ec

    return-object p0

    .line 793
    :catch_1ec
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 797
    :cond_1f1
    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v4, 0x1

    .line 799
    :cond_1fe
    :try_start_1fe
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 800
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 801
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_225

    .line 802
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v11

    if-nez v2, :cond_216

    if-eqz v4, :cond_225

    .line 803
    :cond_216
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_225

    return-object v0

    .line 806
    :cond_225
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_249

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, v12

    if-nez v0, :cond_235

    if-eqz v4, :cond_249

    .line 807
    :cond_235
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 808
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0
    :try_end_245
    .catch Ljava/lang/NumberFormatException; {:try_start_1fe .. :try_end_245} :catch_249

    if-nez p0, :cond_248

    return-object v1

    :cond_248
    return-object v0

    .line 816
    :catch_249
    :cond_249
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 655
    :cond_24e
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_257

    :goto_256
    throw p0

    :goto_257
    goto :goto_256
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_11

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    if-eqz v1, :cond_19

    .line 844
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 859
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_9
    if-ltz v1, :cond_18

    .line 860
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 864
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .registers 17

    .line 1599
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1602
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1603
    array-length v2, v0

    .line 1609
    aget-char v3, v0, v1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v3, v5, :cond_1d

    aget-char v3, v0, v1

    if-ne v3, v4, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v3, 0x1

    :goto_1e
    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x46

    const/16 v9, 0x66

    const/16 v10, 0x39

    const/16 v11, 0x2e

    const/16 v12, 0x30

    if-le v2, v7, :cond_8a

    .line 1610
    aget-char v13, v0, v3

    if-ne v13, v12, :cond_8a

    move-object/from16 v13, p0

    invoke-static {v13, v11}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v13

    if-nez v13, :cond_8a

    .line 1611
    aget-char v13, v0, v7

    const/16 v14, 0x78

    if-eq v13, v14, :cond_60

    aget-char v13, v0, v7

    const/16 v14, 0x58

    if-ne v13, v14, :cond_45

    goto :goto_60

    .line 1625
    :cond_45
    aget-char v13, v0, v7

    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 1628
    :goto_4d
    array-length v2, v0

    if-ge v7, v2, :cond_5f

    .line 1629
    aget-char v2, v0, v7

    if-lt v2, v12, :cond_5e

    aget-char v2, v0, v7

    const/16 v3, 0x37

    if-le v2, v3, :cond_5b

    goto :goto_5e

    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_5e
    :goto_5e
    return v1

    :cond_5f
    return v6

    :cond_60
    :goto_60
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_65

    return v1

    .line 1617
    :cond_65
    :goto_65
    array-length v2, v0

    if-ge v3, v2, :cond_89

    .line 1618
    aget-char v2, v0, v3

    if-lt v2, v12, :cond_70

    aget-char v2, v0, v3

    if-le v2, v10, :cond_85

    :cond_70
    aget-char v2, v0, v3

    const/16 v4, 0x61

    if-lt v2, v4, :cond_7a

    aget-char v2, v0, v3

    if-le v2, v9, :cond_85

    :cond_7a
    aget-char v2, v0, v3

    const/16 v4, 0x41

    if-lt v2, v4, :cond_88

    aget-char v2, v0, v3

    if-le v2, v8, :cond_85

    goto :goto_88

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_88
    :goto_88
    return v1

    :cond_89
    return v6

    :cond_8a
    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_90
    const/16 v5, 0x45

    const/16 v4, 0x65

    if-lt v3, v2, :cond_f6

    add-int/lit8 v8, v2, 0x1

    if-ge v3, v8, :cond_a1

    if-eqz v7, :cond_a1

    if-nez v13, :cond_a1

    const/16 v8, 0x46

    goto :goto_f6

    .line 1674
    :cond_a1
    array-length v2, v0

    if-ge v3, v2, :cond_f0

    .line 1675
    aget-char v2, v0, v3

    if-lt v2, v12, :cond_ad

    aget-char v2, v0, v3

    if-gt v2, v10, :cond_ad

    return v6

    .line 1679
    :cond_ad
    aget-char v2, v0, v3

    if-eq v2, v4, :cond_ef

    aget-char v2, v0, v3

    if-ne v2, v5, :cond_b6

    goto :goto_ef

    .line 1683
    :cond_b6
    aget-char v2, v0, v3

    if-ne v2, v11, :cond_c1

    if-nez v15, :cond_c0

    if-eqz v14, :cond_bf

    goto :goto_c0

    :cond_bf
    return v13

    :cond_c0
    :goto_c0
    return v1

    :cond_c1
    if-nez v7, :cond_da

    .line 1691
    aget-char v2, v0, v3

    const/16 v4, 0x64

    if-eq v2, v4, :cond_d9

    aget-char v2, v0, v3

    const/16 v4, 0x44

    if-eq v2, v4, :cond_d9

    aget-char v2, v0, v3

    if-eq v2, v9, :cond_d9

    aget-char v2, v0, v3

    const/16 v8, 0x46

    if-ne v2, v8, :cond_da

    :cond_d9
    return v13

    .line 1698
    :cond_da
    aget-char v2, v0, v3

    const/16 v4, 0x6c

    if-eq v2, v4, :cond_e8

    aget-char v0, v0, v3

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_e7

    goto :goto_e8

    :cond_e7
    return v1

    :cond_e8
    :goto_e8
    if-eqz v13, :cond_ef

    if-nez v14, :cond_ef

    if-nez v15, :cond_ef

    const/4 v1, 0x1

    :cond_ef
    :goto_ef
    return v1

    :cond_f0
    if-nez v7, :cond_f5

    if-eqz v13, :cond_f5

    const/4 v1, 0x1

    :cond_f5
    return v1

    .line 1642
    :cond_f6
    :goto_f6
    aget-char v6, v0, v3

    if-lt v6, v12, :cond_105

    aget-char v6, v0, v3

    if-gt v6, v10, :cond_105

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v7, 0x0

    const/4 v13, 0x1

    goto :goto_140

    .line 1646
    :cond_105
    aget-char v6, v0, v3

    if-ne v6, v11, :cond_115

    if-nez v15, :cond_114

    if-eqz v14, :cond_10e

    goto :goto_114

    :cond_10e
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v15, 0x1

    goto :goto_140

    :cond_114
    :goto_114
    return v1

    .line 1652
    :cond_115
    aget-char v6, v0, v3

    if-eq v6, v4, :cond_134

    aget-char v4, v0, v3

    if-ne v4, v5, :cond_11e

    goto :goto_134

    .line 1663
    :cond_11e
    aget-char v4, v0, v3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_12c

    aget-char v4, v0, v3

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_12b

    goto :goto_12e

    :cond_12b
    return v1

    :cond_12c
    const/16 v6, 0x2d

    :goto_12e
    if-nez v7, :cond_131

    return v1

    :cond_131
    const/4 v7, 0x0

    const/4 v13, 0x0

    goto :goto_140

    :cond_134
    :goto_134
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eqz v14, :cond_13b

    return v1

    :cond_13b
    if-nez v13, :cond_13e

    return v1

    :cond_13e
    const/4 v7, 0x1

    const/4 v14, 0x1

    :goto_140
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x2b

    const/4 v6, 0x1

    goto/16 :goto_90
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 1

    .line 1543
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1573
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .registers 5

    .line 1729
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1732
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_17

    return v1

    .line 1735
    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2b

    .line 1736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_26

    return v1

    .line 1739
    :cond_26
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 1741
    :cond_2b
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static max(BBB)B
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([B)B
    .registers 4

    .line 1239
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1242
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 1243
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1244
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_10

    .line 1245
    aget-byte v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static max(DDD)D
    .registers 6

    .line 1512
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .registers 7

    .line 1264
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1267
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1268
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 1269
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 1272
    :cond_15
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1d

    .line 1273
    aget-wide v0, p0, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    return-wide v0
.end method

.method public static max(FFF)F
    .registers 3

    .line 1528
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .registers 4

    .line 1292
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1295
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1296
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 1297
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 1300
    :cond_15
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1d

    .line 1301
    aget v0, p0, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return v0
.end method

.method public static max(III)I
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([I)I
    .registers 4

    .line 1191
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1194
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1195
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1196
    aget v2, p0, v1

    if-le v2, v0, :cond_10

    .line 1197
    aget v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static max(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-lez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs max([J)J
    .registers 7

    .line 1167
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1170
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1171
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 1172
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_12

    .line 1173
    aget-wide v0, p0, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-wide v0
.end method

.method public static max(SSS)S
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([S)S
    .registers 4

    .line 1215
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1218
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 1219
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1220
    aget-short v2, p0, v1

    if-le v2, v0, :cond_10

    .line 1221
    aget-short v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static min(BBB)B
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([B)B
    .registers 4

    .line 1085
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1088
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 1089
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1090
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_10

    .line 1091
    aget-byte v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static min(DDD)D
    .registers 6

    .line 1406
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .registers 7

    .line 1110
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1113
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1114
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 1115
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 1118
    :cond_15
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1d

    .line 1119
    aget-wide v0, p0, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    return-wide v0
.end method

.method public static min(FFF)F
    .registers 3

    .line 1422
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .registers 4

    .line 1138
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1141
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1142
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 1143
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 1146
    :cond_15
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1d

    .line 1147
    aget v0, p0, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return v0
.end method

.method public static min(III)I
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([I)I
    .registers 4

    .line 1037
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1040
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1041
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1042
    aget v2, p0, v1

    if-ge v2, v0, :cond_10

    .line 1043
    aget v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static min(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-gez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs min([J)J
    .registers 7

    .line 1013
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1016
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1017
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 1018
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_12

    .line 1019
    aget-wide v0, p0, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-wide v0
.end method

.method public static min(SSS)S
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([S)S
    .registers 4

    .line 1061
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1064
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 1065
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1066
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_10

    .line 1067
    aget-short v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result p0

    return p0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 373
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3

    const-wide/16 v0, 0x0

    .line 255
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 282
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .registers 3

    const-wide/16 v0, 0x0

    .line 305
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .registers 3

    if-nez p0, :cond_3

    goto :goto_7

    .line 326
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    :goto_7
    return-wide p1
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 230
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 129
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    .line 153
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 178
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .registers 3

    .line 518
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5

    if-nez p0, :cond_5

    .line 535
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 538
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 537
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .registers 3

    .line 479
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5

    if-nez p0, :cond_5

    .line 496
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 499
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 498
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    .line 557
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_5

    .line 574
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 577
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 576
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3

    .line 441
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_5

    .line 458
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_5
    if-nez p2, :cond_9

    .line 462
    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 460
    :cond_9
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2

    const/4 v0, 0x0

    .line 397
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result p0

    return p0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 422
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    .line 1315
    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "Array cannot be empty."

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1746
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2b

    .line 1747
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    if-le v1, v3, :cond_1b

    return v0

    :cond_1b
    if-nez v2, :cond_28

    .line 1754
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_28

    return v0

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2b
    return v3
.end method
