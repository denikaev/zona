//
//  QuestionViewController.swift
//  OlympicGame
//
//  Created by Олег Комисаренко on 11.11.17.
//  Copyright © 2017 RocketMan. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    @IBOutlet weak var singleButton5: UIButton!
    @IBOutlet weak var singleButton6: UIButton!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func singleAnsweredButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        case singleButton5:
            answersChosen.append(currentAnswers[4])
        case singleButton6:
            answersChosen.append(currentAnswers[5])
        default:
            break
        }
        
        nextQuestion()
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        questionLabel.text = currentQuestion.text
        
        updateSingleStack(using: currentAnswers)
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
        singleButton5.setTitle(answers[4].text, for: .normal)
        singleButton6.setTitle(answers[5].text, for: .normal)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    var questions: [Question] = [
        Question(text: "Итак, ты входишь в хату. В хате 7 человек, трое за дубком на тебя внимания не обращают. Что ты им скажешь?",answers: [
            Answer(text: "Пожать всем руки", type: .shnir),
            Answer(text: "Здорова, мужики", type: .man),
            Answer(text: "Здравствуйте", type: .kozel),
            Answer(text: "Кто смотрящий?", type: .blat),
            Answer(text: "Здарова, бродяги", type: .pahan),
            Answer(text: "Вечер в хату арестанты", type: .blat),
            ]),
        Question(text: "Тебе под ноги кинули полотенце.",answers: [
            Answer(text: "Поднять полотенце и вернуть", type: .petuh),
            Answer(text: "Вытереть ноги и пройти", type: .pahan),
            Answer(text: "Перешагнуть", type: .man),
            Answer(text: "Кинуть его обратно", type: .shnir),
            Answer(text: "Узнать зачем оно", type: .pahan),
            Answer(text: "Продолжать стоять", type: .blat),
            ]),
        Question(text: "- Обзавись кто такой. По какой статье чалишься??",answers: [
            Answer(text: "Наркотой барыжил", type: .shnir),
            Answer(text: "Да за мелкое, бутылку водки стырил", type: .man),
            Answer(text: "Взял кассу", type: .pahan),
            Answer(text: "Против системы пошел", type: .blat),
            Answer(text: "Выпотрошил мохнатый сейф", type: .petuh),
            Answer(text: "Подставили меня", type: .kozel),
            ]),
        Question(text: "Сильно били, пока ты был подследственным?",answers: [
            Answer(text: "Совсем не били", type: .kozel),
            Answer(text: "По голове через книгу били", type: .petuh),
            Answer(text: "Током, гниды, шпарили", type: .six),
            Answer(text: "Душили противогазом", type: .man),
            Answer(text: "Подвешивали меня ласточкой", type: .pahan),
            Answer(text: "Посмотри на мои опухшие жёлто-сиреневые пятки", type: .blat),
            ]),
        Question(text: "И ты ничего им не сказал? А сам-то кто по жизни?",answers: [
            Answer(text: "Рабочий обычный я", type: .shnir),
            Answer(text: "В милиции работал, мент я бывший", type: .kozel),
            Answer(text: "Не лох я, господа, живу по понятиям", type: .blat),
            Answer(text: "Бизнесом занимался, было свое дело", type: .man),
            Answer(text: "Высшее образование,профессионал своего дела", type: .shnir),
            Answer(text: "Да обычный парень", type: .petuh),
            ]),
        Question(text: "Один из арестантов показывает тебе костяшку домино 5:6. И спрашивает, что ты выберешь?",answers: [
            Answer(text: "Не знаю", type: .man),
            Answer(text: "5", type: .shnir),
            Answer(text: "6", type: .six),
            Answer(text: "Разделительную черту", type: .blat),
            Answer(text: "Я в ваши игры не играю", type: .petuh),
            Answer(text: "А зачем это?", type: .kozel),
            ]),
        Question(text: "Тут нам из соседней хаты маячат, шо тебя по свободе еще на шляпу натянули, было? Так шо, рассказуй, как тебя попилили",answers: [
            Answer(text: "Не было ничего", type: .shnir),
            Answer(text: "Ударить кулаком обидчика", type: .man),
            Answer(text: "Промолчать", type: .kozel),
            Answer(text: "Кто так сказал?", type: .shnir),
            Answer(text: "Врут все", type: .pahan),
            Answer(text: "Да..не помню я", type: .blat),
            ]),
        Question(text: "Лучше сразу признайся, ты не педераст? Все равно узнаем рано или поздно?",answers: [
            Answer(text: "Я не педераст", type: .man),
            Answer(text: "Да я педераст, лягу у параши", type: .petuh),
            Answer(text: "Я бисексуал", type: .petuh),
            Answer(text: "Вафлер я запомоенный", type: .petuh),
            Answer(text: "Да ты чего! Нет!", type: .six),
            Answer(text: "А за базар ответишь?", type: .blat),
            ]),
        Question(text: "А доказывать будешь? В тазик сядешь?",answers: [
            Answer(text: "Порядочный арестант в тазик не сядет", type: .pahan),
            Answer(text: "Да говорю же, лягу у параши", type: .petuh),
            Answer(text: "Сяду", type: .petuh),
            Answer(text: "А ты мне в х.. дунешь?", type: .blat),
            Answer(text: "Нет не сяду", type: .man),
            Answer(text: "Промолчать", type: .shnir),
            ]),
        Question(text: "Да все, все...Вопросов нет. Чего, я смотрю, посрать хочешь? Ну иди на дальняк, выдави личину.",answers: [
            Answer(text: "Сесть на туалет и начать откладывать глину на виду у всех", type: .kozel),
            Answer(text: "Начать давить пасту, пытаясь скрыть звуки пердежа", type: .man),
            Answer(text: "Сесть откидывать шлак и с особым энтузиазмом дуть в свою дудку", type: .petuh),
            Answer(text: "Узнать не кушает кто-нибудь сейчас?", type: .blat),
            Answer(text: "Не хочу", type: .man),
            Answer(text: "Попросить бумагу", type: .shnir),
            ]),
        Question(text: "Пытаясь скрыть звуки, вы все равно даете газу несколько раз — Гниешь, братан. — Не рви жопу, дай померить!А теперь иди руки помой, а то хрен ведь трогал.",answers: [
            Answer(text: "Помыть", type: .man),
            Answer(text: "Не мыть", type: .petuh),
            Answer(text: "Попросить мыло", type: .kozel),
            Answer(text: "Почистить унитаз за собой", type: .petuh),
            Answer(text: "Вытереть руки полотенцем", type: .six),
            Answer(text: "Молча встать и пройти к столу", type: .petuh),
            ]),
        Question(text: "Ну что, шары вкатывать будешь?",answers: [
            Answer(text: "Буду", type: .blat),
            Answer(text: "Нет", type: .man),
            Answer(text: "Шары?", type: .kozel),
            Answer(text: "В бильярд играете?", type: .six),
            Answer(text: "А что это такое?", type: .shnir),
            Answer(text: "Промолчать", type: .petuh),
            ]),
        Question(text: "Ха-ха-ха! А баба у тебя есть?",answers: [
            Answer(text: "Это моя личная жизнь", type: .shnir),
            Answer(text: "Да", type: .man),
            Answer(text: "Нет", type: .blat),
            Answer(text: "Была", type: .six),
            Answer(text: "У меня много было", type: .pahan),
            Answer(text: "Да девственник я", type: .blat),
            ]),
        Question(text: "И как? Хорошо с ней было? Мохнатку ей лизал?",answers: [
            Answer(text: "Конечно, братва, кто ж не лизал?!", type: .petuh),
            Answer(text: "Ну так, было разок", type: .petuh),
            Answer(text: "Да хорошо с ней было, хорошо, но мохнатку, к сожалению, не лизал", type: .petuh),
            Answer(text: "Моя личная жизнь — это моя личная жизнь", type: .man),
            Answer(text: "Я же сказал, не было у меня девушки!", type: .shnir),
            Answer(text: "Нет", type: .man),
            ]),
        Question(text: "Ну во что играть то будем?",answers: [
            Answer(text: "Нарды", type: .blat),
            Answer(text: "Домино", type: .man),
            Answer(text: "Шашки", type: .kozel),
            Answer(text: "Карты", type: .pahan),
            Answer(text: "Шахматы", type: .shnir),
            Answer(text: "Камень-ножницы-бумага", type: .petuh),
            ]),
        Question(text: "Ну давай сыграем, на что играть будешь?",answers: [
            Answer(text: "На просто так", type: .petuh),
            Answer(text: "На золотой пятак", type: .shnir),
            Answer(text: "На интерес", type: .blat),
            Answer(text: "Не знаю", type: .six),
            Answer(text: "Играем без интереса", type: .kozel),
            Answer(text: "Ну, мне интересно, если ты это имел ввиду", type: .six),
            ])
        ,
        Question(text: "Без интереса и мне не интересно. Но ты правильно поступаешь. У нас ведь здесь черная зона. Ты же знаешь, что это означает?",answers: [
            Answer(text: "Знаю, это значит, у вас чернокожие всем заправляют", type: .six),
            Answer(text: "Когда все по ментовским предписаниям", type: .kozel),
            Answer(text: "Когда братва и понятия порядком управляют", type: .blat),
            Answer(text: "Не знаю, а что это?", type: .shnir),
            Answer(text: "Ну там строго все очень", type: .kozel),
            Answer(text: "Очень плохие люди наверно", type: .petuh),
            ])
        ,
        Question(text: "Ну что, выбирай, какую татуху тебе набить",answers: [
            Answer(text: "КОТ", type: .pahan),
            Answer(text: "ЗЛО", type: .pahan),
            Answer(text: "ТУЗ", type: .blat),
            Answer(text: "КЛЕН", type: .petuh),
            Answer(text: "ХТХСТ", type: .man),
            Answer(text: "ХТХЛШ", type: .blat),
            ])
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
    }
    
}
