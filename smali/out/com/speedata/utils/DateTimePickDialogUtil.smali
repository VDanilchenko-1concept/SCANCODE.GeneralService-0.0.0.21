.class public Lcom/speedata/utils/DateTimePickDialogUtil;
.super Ljava/lang/Object;
.source "DateTimePickDialogUtil.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ad:Landroid/app/AlertDialog;

.field private datePicker:Landroid/widget/DatePicker;

.field private dateTime:Ljava/lang/String;

.field private initDateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->activity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->initDateTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/speedata/utils/DateTimePickDialogUtil;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->dateTime:Ljava/lang/String;

    return-object p0
.end method

.method private getCalendarByInintData(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 8

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "\u65e5"

    const-string v2, "front"

    const-string v3, "index"

    .line 114
    invoke-static {p1, v1, v3, v2}, Lcom/speedata/utils/DateTimePickDialogUtil;->spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "back"

    .line 115
    invoke-static {p1, v1, v3, v5}, Lcom/speedata/utils/DateTimePickDialogUtil;->spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u5e74"

    .line 117
    invoke-static {v4, p1, v3, v2}, Lcom/speedata/utils/DateTimePickDialogUtil;->spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v4, p1, v3, v5}, Lcom/speedata/utils/DateTimePickDialogUtil;->spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\u6708"

    .line 120
    invoke-static {p1, v4, v3, v2}, Lcom/speedata/utils/DateTimePickDialogUtil;->spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {p1, v4, v3, v5}, Lcom/speedata/utils/DateTimePickDialogUtil;->spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 129
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    return-object v0
.end method

.method private init(Landroid/widget/DatePicker;)V
    .registers 8

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->initDateTime:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1a

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 45
    iget-object v0, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->initDateTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/speedata/utils/DateTimePickDialogUtil;->getCalendarByInintData(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_49

    .line 47
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u5e74"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u6708"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u65e5"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->initDateTime:Ljava/lang/String;

    .line 53
    :goto_49
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 53
    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public static spliteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "index"

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    goto :goto_11

    .line 151
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    :goto_11
    const-string p2, "front"

    .line 153
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_22

    if-eq p1, p3, :cond_2f

    const/4 p2, 0x0

    .line 155
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_22
    if-eq p1, p3, :cond_2f

    add-int/lit8 p1, p1, 0x1

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_2f
    const-string p0, ""

    :goto_31
    return-object p0
.end method


# virtual methods
.method public dateTimePicKDialog(Landroid/widget/TextView;)Landroid/app/AlertDialog;
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->activity:Landroid/app/Activity;

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/speedata/deivice/R$layout;->common_datetime:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    sget v1, Lcom/speedata/deivice/R$id;->datepicker:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->datePicker:Landroid/widget/DatePicker;

    .line 71
    invoke-direct {p0, v1}, Lcom/speedata/utils/DateTimePickDialogUtil;->init(Landroid/widget/DatePicker;)V

    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->initDateTime:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/speedata/utils/DateTimePickDialogUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/speedata/utils/DateTimePickDialogUtil$2;-><init>(Lcom/speedata/utils/DateTimePickDialogUtil;Landroid/widget/TextView;)V

    const-string p1, "\u8bbe\u7f6e"

    .line 76
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/speedata/utils/DateTimePickDialogUtil$1;

    invoke-direct {v0, p0}, Lcom/speedata/utils/DateTimePickDialogUtil$1;-><init>(Lcom/speedata/utils/DateTimePickDialogUtil;)V

    const-string v1, "\u53d6\u6d88"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->ad:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, v2, p1, p1, p1}, Lcom/speedata/utils/DateTimePickDialogUtil;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 88
    iget-object p1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->ad:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 5

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getYear()I

    move-result p2

    iget-object p3, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p3}, Landroid/widget/DatePicker;->getMonth()I

    move-result p3

    iget-object p4, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->datePicker:Landroid/widget/DatePicker;

    .line 96
    invoke-virtual {p4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p4

    .line 95
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 97
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->dateTime:Ljava/lang/String;

    .line 100
    iget-object p2, p0, Lcom/speedata/utils/DateTimePickDialogUtil;->ad:Landroid/app/AlertDialog;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
