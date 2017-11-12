//
//  Question.swift
//  OlympicGame
//
//  Created by Олег Комисаренко on 12.11.17.
//  Copyright © 2017 RocketMan. All rights reserved.
//

import Foundation


struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: Caste
}

enum Caste:String {
    
    case king = "Вор в законе"
    case pahan = "Смотрящий"
    case blat = "Блатной"
    case six = "Шестерка"
    case man = "Мужик"
    case kozel = "Козел"
    case shnir = "Шнырь"
    case petuh = "Петух"
    
    var definition: String {
        switch self {
        case .king:
            return "Вор aka Батя. Попадают в тюрьму осознанно, и потому считаются главными. Для них тюрьма — лишь закономерный этап жизненного пути, и они к нему готовы, в отличие от тех, кто вчера сидел дома и жрал щи, а сегодня вдруг оказался на нарах в Мухосранске. В одном лагере их может быть сколько угодно, но положенец всегда один. Коронует, назначает и снимает «смотрящих», разбирает споры, когда смотрящий бессилен и т. д. Обычно, как значится в документах тюремной администрации, «содержится отдельно от остальных заключённых»."
        case .pahan:
            return "Отвечающий за соблюдение воровских принципов в камере или в части тюрьмы. Назначается непосредственно вором, либо сходкой воров в законе. Если таковых в данной локации нет, то наиболее авторитетными блатными. Нередко в уголовной иерархии является кандидатом в «воры». Если в зоне кого-то «коронуют», то на момент перед коронацией кандидат непременно имеет статус «пахана»."
        case .blat:
            return "Идейные уголовники, профессиональные преступники, отбывающие не первый срок. Это даёт свои преимущества, так как можно гнобить всех остальных. Нужно помнить, что всегда есть границы «гнобления» — беспредельничать пахан (в чёрной зоне) не даст, за это могут строго спросить, вплоть до опускания. Особо буйным отрицалам администрация предоставляет фиксированный набор развлечений, состоящих из: ШИЗО — штрафной изолятор aka «делянка», ПКТ — помещение камерного типа, ТЗ — тюремное заключение — то, на которое можно заехать только с зоны, и не более чем на два года, ибо жопа жопная, либо ЕПКТ — единое помещение камерного типа. Если ПКТ находится в той же зоне, то на «ешку» вывозят отморозков со всех окрестных зон."
        case .six:
            return "Преступники, попавшие в тюрьму также осознанно, главным образом после малолетки, в 99% случаев это гопники — бывшая дворовая шпана, мелкие, районного уровня бандиты, и прочие барыги. Подчиняются блатным, но статусом выше мужиков, поскольку шестёрки они в той мере, в которой, например, референт министра или адъютант генерала может считаться его шестёркой. Обычно они больше мужиков знают о тюремной жизни, плюс им покровительствуют блатные (пока данная шестёрка им нужна). Сами себя «шестёрками» никогда не называют, а называют обычно «двигающимися», «создающими движение». Если ты относишься к этой касте, и тебя кто-то назовёт «шестёркой», ты обязательно должен будешь спросить с него за это, иначе сам будешь считаться «запоровшим бочину» и потеряешь уважение. На «красных» зонах у завхозов есть пиздюки, которые выполняют различные функции — шустрануть что-нибудь, закинуть другому завхозу или куму сигарет, и прочее. Шестёрки выполняют следующие функции: \n конегон — следит за трассой (связь между камерами в тюрьме, осуществляемая при помощи «коней» — самодельных верёвок, сплетённых из распущенных шапок, свитеров, носков. По ним передается всё — от записок (маляв) до чая/конфет и даже;\n            васьки (прогонщики) — аналог конегона, но обычно либо «открикивающие» из камеры в камеру голосом, либо сортирующие тюремные «малявы» в специальной «прогонной» («почтовой») камере. Попасть в «прогонную» хату (камеру) считается, с одной стороны, почётным (ещё бы — ты же ради общего стараешься), с другой стороны — очень муторным, ибо круглые сутки будешь сидеть и «прогонять». Оплата за это если и предусматривается, то НЕ деньгами, а вещами или продуктами, и исключительно от щедрот; \n торпеды — исполнители суровых решений. Как правило, торпедой становится проигравший в карты, «впоровший косяк» или каким-либо образом серьёзно облажавшийся. Зачастую — исполнитель заказных убийств как на зоне, так и вне её (после выхода, срок значения не имеет). Задание должно быть выполнимым — то есть нельзя послать торпеду слетать на Альфа-Центавру и доставить оттуда пробы грунта; \n быки — защищают местных VIP-ов, а именно пахана и/или особо авторитетных блатных, и несут ответственность в случае, если с ними что-нибудь произойдёт."
        case .man:
            return "По сути, «средний класс» лагерной иерархии. На мужиках зона держится. ЧСХ, на «чёрной» зоне мужик — масть как раз воровская, и носить сей статус (вопреки распространённому мнению) могут немногие. Неоднократно судимый мужик, например, поднявшийся с малолетки, который «двигается», может неплохо так блатовать: проигрывать вещи козлов и чертей в карты, не работать (ещё хуже — такой может стать бригадиром, вот тут-то и душу за сгубленную молодость отвести можно!). Первоходам такое недоступно, им надо пахать. В большинстве случаев к мужикам (особенно неоднократно судимым или поднявшимся с малолетки) относятся нормально, а к «двигающимся» и уважительно. За это мужики обязаны работать, уважать и соблюдать воровской закон и авторитетов («Мужик — опора Вора»), а также — делать что-то «во благо общего», отдавать часть принесённого им с воли или заработанного, в «общак».\n Впрочем, количество означенной пользы (не пользы а блага, пользу приносят шныри) может быть разным: если администрация места лишения свободы («красные») не совсем ещё срослась с «чёрными», и не использует «сук» для создания невыносимых условий, то отметка «на общак» вполне себе символическая. Если же в зоне/СИЗО бардак и раздрай, то доходит до тяжёлых ситуаций фактического рабства «мужиков»: лагерные «авторитеты» руками «двигающихся» буквально выбивают из «мужиков» установленный самими же «авторитетами» произвольных размеров «план» по производству всяческих благ по отработке «на общак». А в особо тяжёлых случаях выбивают ещё и производственный план по сговору с администрацией, причем зачастую не только нужный для бумаги, а ещё и ту часть, которая идёт на карман ФСИНовцам. \n «Двигаться» для мужиков вроде и не обязательно (хотя поощряется — апгрейд-версия «мужика» теперь называется «двигающийся»), но приходится: если срок больше 3-4 лет, и УДО не светит (например, за тяжкие телесные, превышение самообороны, незаконное владение, грабёж, угон и др.), то волей-неволей придётся примыкать к местной авторитетной семейке. Собственно путь к успеху на зоне таков: «мужик» («середняк» или «пацан» на малолетке) — «двигающийся», «блатной», «смотряга/пахан», «вор». Успех достигается в среднем в течение 20-ти лет, при этом придётся сделать в общей сложности 3-4 ходки, без УДО, в сумме лет 15. Если повезёт, то можно и одну, но не менее 10 лет, лаврушником проканать не считается. В лучшем случае им это удаётся, и вместо дворового гопника, колхозного нищеброда или лоха, получившего срок за превышение самообороны, мы получаем на выходе очередного матёрого бандюгу-«синяка». В худшем — обыкновенного «шныря» (см. ниже)."
        case .kozel:
            return "Зэки, согласившиеся сотрудничать с тюремной администрацией за определённые послабления: от банальной сгущёнки и кусочка колбасы до УДО за особо хорошую работу. Особенно этим страдают «верблюды» — они готовы на любую подлянку, лишь бы им помогли выйти. В худшем случае они оказываются посмешищем для всего отряда. По причине тупости стукач не понимает, что если хорошо стучать, то начальству он выгоден, и УДО ему не видать как ЖПП, как минимум пока не станет бесполезен. Да и в этом варианте проще послать его нахуй, причём в буквальном смысле: загнать в «обиженку» или «петушатню», или выдать братве: вся хата по очереди сделает его раком. Правда, нормальный козёл никогда не пойдет на УДО, не оставив себе достойную замену. Опять же, с ментом, любящим посылать нахуй, зэки стараются дела не иметь."
        case .shnir:
            return "Они же «черти», они же «кони». Вторая снизу каста — рабы, которые делают всю грязную работу, кроме совсем уж запарашной (это к «петухам»). К примеру, постирать или подмести пол нормальному пацану или мужику категорически западло, это работа халдеев чертей. В эту касту попадают: первоходы, склонные к подчинению кому угодно; мужики и блатные, впоровшие серьёзный косяк (имеющие «хвост»). В чертей также могут определить зэка, положившего болт на личную гигиену (да, зэки должны следить за своим уровнем вони, состоянием одежды и растительностью на лице, нет, не все это делают). Не стоит путать шнырей с петухами: на анальную девственность шнырей никто не покушается, и им доверяют уход за личными вещами. Петуху же стирку доверять — лютый зашквар."
        case .petuh:
            return "Они же «опущенные», они же «обиженные», они же «пидоры», «гребни» и «пинчи». Опущенный становится изгоем, получает новое имя и тарелку с дырочкой — для того, чтобы его посуду нельзя было перепутать с другой, в мисках, кружках и ложках сверлятся дырки, и чтобы суп или чай не выливался, петух затыкает дырку пальцем. Уголовники часто вместо «опустили» говорят «подарили тарелочку с дырочкой». Пассивные педерасты с воли в тюрьму попадают редко, но в тюрьме пассивным педерастом стать не легко, а очень легко. \n Хомячки думают, будто в тюрьме опустить легче, чем обоссать два пальца. Но большинство не только бывших надзирателей, но и сидельцев уверены, что активные педерасты пидорят только за полный беспредел. В настоящее время, после лихих девяностых, стараются вообще не использовать «наказание хуем» в виде кары за скверные поступки. Более того, один из истинно воровских законов, похеренных в далёкие семидесятые, гласил: «хуем и смертью не наказывать». Ибо именно из этой касты повыходило немало особенно ушибленных бандюганов (терять-то им особенно уже было нечего), запомнившихся эпичнейшими выпилами с особой жестокостью целых взводов и рот — как истинно порядочной «босоты», так и ментов, мирных вольных граждан, и других таких же конкурентов за контроль над «коммерсами». Также из пидоров создавались пресс-хаты (во где злость-то на опускавших можно выместить, да!) и вербовались стукачи (сидит себе под шконкой и тихо фиксирует всё, что вокруг набалтывают)."
        }
    }
}