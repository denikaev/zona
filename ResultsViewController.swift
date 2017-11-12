//
//  ResultsViewController.swift
//  OlympicGame
//
//  Created by Олег Комисаренко on 12.11.17.
//  Copyright © 2017 RocketMan. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UITextView!
    
    @IBOutlet weak var klikuhaLabel: UILabel!
    
    
    var responses : [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [Caste:Int] = [:]
        let responsesTypes = responses.map {$0.type}
        
        for response in responsesTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        _ = frequencyOfAnswers.sorted(by: { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted {$0.1 > $1.1}.first!.key
    
        resultLabel.text = mostCommonAnswer.rawValue
        definitionLabel.text = mostCommonAnswer.definition
        
        switch mostCommonAnswer.rawValue {
        case "Смотрящий":
            klikuhaLabel.text = "Твоя кликуха: Путин"
            var image: UIImage = UIImage(named: "pahan")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
            //Сюда надо вставить imageView чтобы менялся
        case "Блатной":
            klikuhaLabel.text = "Твоя кликуха: Гнев Божий"
            var image: UIImage = UIImage(named: "blat")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
        case "Шестерка":
            klikuhaLabel.text = "Твоя кликуха: Лепила"
            var image: UIImage = UIImage(named: "six")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
        case "Мужик":
            klikuhaLabel.text = "Твоя кликуха: Кукурузник"
            var image: UIImage = UIImage(named: "man")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
        case "Козел":
            klikuhaLabel.text = "Твоя кликуха: Резкий Конч"
            var image: UIImage = UIImage(named: "kozel")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
        case "Шнырь":
            klikuhaLabel.text = "Твоя кликуха: Дрисло"
            var image: UIImage = UIImage(named: "shnir")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
        case "Петух":
            klikuhaLabel.text = "Твоя кликуха: Старая Глина"
            var image: UIImage = UIImage(named: "petuh")!
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
        default:
            break
        }
        
    }
    
    
    
}
