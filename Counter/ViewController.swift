//
//  ViewController.swift
//  Counter
//
//  Created by Евгений Веников on 13.02.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    private var currentData: String {
        let formatterDate = DateFormatter()
        formatterDate.dateFormat = "dd.MM.YYYY HH:mm"
        return formatterDate.string(from: Date())
    }
    private var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButton() {
        //check on max value
        guard count != Int.max else {
            historyTextView.text += "\n\(currentData) попытка увеличить значение счётчика выше максимума"
            return
        }
        
        count += 1
        counterLabel.text = String(count)
        historyTextView.text += "\n\(currentData) значение изменено на +1"
    }
    
    @IBAction func minusButton() {
        //check on min value
        guard count != 0 else {
            historyTextView.text += "\n\(currentData) попытка уменьшить значение счётчика ниже 0"
            return
        }
        
        count -= 1
        counterLabel.text = String(count)
        historyTextView.text += "\n\(currentData) значение изменено на -1"
    }
    
    @IBAction func resetButton() {
        count = 0
        counterLabel.text = String(count)
        historyTextView.text += "\n\(currentData) значение сброшено"
    }
    
}


