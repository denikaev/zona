//
//  QuestionViewController.swift
//  OlympicGame
//
//  Created by Олег Комисаренко on 11.11.17.
//  Copyright © 2017 RocketMan. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    var questions: [Question] = [
        Question(text: "Итак, ты входишь в хату. В хате 7 человек, трое за дубком на тебя внимания не обращают. Что ты им скажешь?",answers: [
            Answer(text: "Пожать всем руки", type: .shnir),
            Answer(text: "Здорова, мужики", type: .man),
            Answer(text: "Здравствуйте", type: .kozel),
            Answer(text: "Кто смотрящий?", type: .king),
            Answer(text: "Здарова, бродяги", type: .pahan),
            Answer(text: "Вечер в хату арестанты", type: .blat),
            ]),
        Question(text: "Тебе под ноги кинули полотенце.",answers: [
            Answer(text: "Поднять полотенце и вернуть", type: .petuh),
            Answer(text: "Вытереть ноги и пройти", type: .pahan),
            Answer(text: "Перешагнуть", type: .kozel),
            Answer(text: "Кинуть его обратно", type: .king),
            Answer(text: "Узнать зачем оно", type: .pahan),
            Answer(text: "", type: .blat),
            ]),
        Question(text: "- Обзавись кто такой. По какой статье чалишься??",answers: [
            Answer(text: "Наркотой барыжил", type: .shnir),
            Answer(text: "Да за мелкое, бутылку водки стырил", type: .man),
            Answer(text: "Взял кассу", type: .kozel),
            Answer(text: "Против системы пошел", type: .king),
            Answer(text: "Выпотрошил мохнатый сейф", type: .pahan),
            Answer(text: "Подставили меня", type: .blat),
            ]),
        Question(text: "Сильно били, пока ты был подследственным?",answers: [
            Answer(text: "Совсем не били", type: .shnir),
            Answer(text: "По голове через книгу били", type: .man),
            Answer(text: "Током, гниды, шпарили", type: .kozel),
            Answer(text: "Душили противогазом", type: .king),
            Answer(text: "Подвешивали меня ласточкой", type: .pahan),
            Answer(text: "Посмотри на мои опухшие жёлто-сиреневые пятки", type: .blat),
            ]),
        Question(text: "И ты ничего им не сказал? А сам-то кто по жизни?",answers: [
            Answer(text: "Рабочий обычный я", type: .shnir),
            Answer(text: "В милиции работал, мент я бывший", type: .kozel),
            Answer(text: "Не лох я, господа, живу по понятиям", type: .kozel),
            Answer(text: "Бизнесом занимался, было свое дело", type: .king),
            Answer(text: "Высшее образование,профессионал своего дела", type: .pahan),
            Answer(text: "Да обычный парень", type: .blat),
            ]),
        Question(text: "Один из арестантов показывает тебе костяшку домино 5:6. И спрашивает, что ты выберешь?",answers: [
            Answer(text: "Не знаю", type: .shnir),
            Answer(text: "5", type: .man),
            Answer(text: "6", type: .kozel),
            Answer(text: "Разделительную черту", type: .king),
            Answer(text: "Я в ваши игры не играю", type: .pahan),
            Answer(text: "А зачем это?", type: .blat),
            ]),
        Question(text: "Тут нам из соседней хаты маячат, шо тебя по свободе еще на шляпу натянули, было? Так шо, рассказуй, как тебя попилили",answers: [
            Answer(text: "Не было ничего", type: .shnir),
            Answer(text: "Ударить кулаком обидчика", type: .man),
            Answer(text: "Промолчать", type: .kozel),
            Answer(text: "Кто так сказал?", type: .king),
            Answer(text: "Врут все", type: .pahan),
            Answer(text: "Да..не помню я", type: .blat),
            ]),
        Question(text: "Лучше сразу признайся, ты не педераст? Все равно узнаем рано или поздно?",answers: [
            Answer(text: "Я не педераст", type: .shnir),
            Answer(text: "Да я педераст, лягу у параши", type: .man),
            Answer(text: "Я бисексуал", type: .kozel),
            Answer(text: "Вафлер я запомоенный", type: .king),
            Answer(text: "Да ты чего! Нет!", type: .pahan),
            Answer(text: "А за базар ответишь?", type: .blat),
            ]),
        Question(text: "А доказывать будешь? В тазик сядешь?",answers: [
            Answer(text: "Порядочный арестант в тазик не сядет", type: .shnir),
            Answer(text: "Да говорю же, лягу у параши", type: .man),
            Answer(text: "Сяду", type: .kozel),
            Answer(text: "А ты мне в х.. дунешь?", type: .king),
            Answer(text: "Нет не сяду", type: .pahan),
            Answer(text: "Промолчать", type: .blat),
            ]),
        Question(text: "Да все, все...Вопросов нет. Чего, я смотрю, посрать хочешь? Ну иди на дальняк, выдави личину.",answers: [
            Answer(text: "Сесть на туалет и начать откладывать глину на виду у всех", type: .shnir),
            Answer(text: "Начать давить пасту, пытаясь скрыть звуки пердежа", type: .man),
            Answer(text: "Сесть откидывать шлак и с особым энтузиазмом дуть в свою дудку", type: .kozel),
            Answer(text: "Узнать не кушает кто-нибудь сейчас?", type: .king),
            Answer(text: "Не хочу", type: .pahan),
            Answer(text: "Попросить бумагу", type: .blat),
            ]),
        Question(text: "Пытаясь скрыть звуки, вы все равно даете газу несколько раз — Гниешь, братан. — Не рви жопу, дай померить!А теперь иди руки помой, а то хрен ведь трогал.",answers: [
            Answer(text: "Помыть", type: .shnir),
            Answer(text: "Не мыть", type: .man),
            Answer(text: "Попросить мыло", type: .kozel),
            Answer(text: "Почистить унитаз за собой", type: .king),
            Answer(text: "Вытереть руки полотенцем", type: .pahan),
            Answer(text: "Молча встать и пройти к столу", type: .blat),
            ]),
        Question(text: "Ну что, шары вкатывать будешь?",answers: [
            Answer(text: "Буду", type: .shnir),
            Answer(text: "Нет", type: .man),
            Answer(text: "Шары?", type: .kozel),
            Answer(text: "В бильярд играете?", type: .king),
            Answer(text: "А что это такое?", type: .pahan),
            Answer(text: "Промолчать", type: .blat),
            ]),
        Question(text: "Ха-ха-ха! А баба у тебя есть?",answers: [
            Answer(text: "Это моя личная жизнь", type: .shnir),
            Answer(text: "Да", type: .man),
            Answer(text: "Нет", type: .kozel),
            Answer(text: "Была", type: .king),
            Answer(text: "У меня много было", type: .pahan),
            Answer(text: "Да девственник я", type: .blat),
            ]),
        Question(text: "И как? Хорошо с ней было? Мохнатку ей лизал?",answers: [
            Answer(text: "Конечно, братва, кто ж не лизал?!", type: .shnir),
            Answer(text: "Ну так, было разок", type: .man),
            Answer(text: "Да хорошо с ней было, хорошо, но мохнатку, к сожалению, не лизал", type: .kozel),
            Answer(text: "Моя личная жизнь — это моя личная жизнь", type: .king),
            Answer(text: "Я же сказал, не было у меня девушки!", type: .pahan),
            Answer(text: "Нет", type: .blat),
            ]),
        Question(text: "Ну во что играть то будем?",answers: [
            Answer(text: "Нарды", type: .shnir),
            Answer(text: "Домино", type: .man),
            Answer(text: "Шашки", type: .kozel),
            Answer(text: "Карты", type: .king),
            Answer(text: "Шахматы", type: .pahan),
            Answer(text: "Камень-ножницы-бумага", type: .blat),
            ]),
        Question(text: "Ну давай сыграем, на что играть будешь?",answers: [
            Answer(text: "На просто так", type: .shnir),
            Answer(text: "На золотой пятак", type: .man),
            Answer(text: "На интерес", type: .kozel),
            Answer(text: "Не знаю", type: .king),
            Answer(text: "Играем без интереса", type: .pahan),
            Answer(text: "Ну, мне интересно, если ты это имел ввиду", type: .blat),
            ])
        ,
        Question(text: "Без интереса и мне не интересно. Но ты правильно поступаешь. У нас ведь здесь черная зона. Ты же знаешь, что это означает?",answers: [
            Answer(text: "Знаю, это значит, у вас чернокожие всем заправляют", type: .shnir),
            Answer(text: "Когда все по ментовским предписаниям", type: .man),
            Answer(text: "Когда братва и понятия порядком управляют", type: .kozel),
            Answer(text: "Не знаю, а что это?", type: .king),
            Answer(text: "Ну там строго все очень", type: .pahan),
            Answer(text: "Очень плохие люди наверно", type: .blat),
            ])
        ,
        Question(text: "Ну что, выбирай, какую татуху тебе набить",answers: [
            Answer(text: "КОТ", type: .pahan),
            Answer(text: "ЗЛО", type: .king),
            Answer(text: "ТУЗ", type: .blat),
            Answer(text: "КЛЕН", type: .petuh),
            Answer(text: "ХТХСТ", type: .man),
            Answer(text: "ХТХЛШ", type: .blat),
            ])
    ]
    
    
}
