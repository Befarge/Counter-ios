//
//  ViewController.swift
//  Counter
//
//  Created by Евгений Веников on 13.02.2025.
//

import UIKit

extension UITextView {
    func appendString(text: String) {
        self.text = text + self.text
    }
}

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
    }
    
    @IBAction func plusButton() {
        //check on max value
        guard count != Int.max else {
            historyTextView.appendString(text: "\(currentData) попытка увеличить значение счётчика выше максимума\n\n")
            return
        }
        
        count += 1
        counterLabel.text = String(count)
        historyTextView.appendString(text: "\(currentData) значение изменено на +1\n\n")
    }
    
    @IBAction func minusButton() {
        //check on min value
        guard count != 0 else {
            historyTextView.appendString(text: "\(currentData) попытка уменьшить значение счётчика ниже 0\n\n")
            return
        }
        
        count -= 1
        counterLabel.text = String(count)
        historyTextView.appendString(text: "\(currentData) значение изменено на -1\n\n")
    }
    
    @IBAction func resetButton() {
        count = 0
        counterLabel.text = String(count)
        historyTextView.appendString(text: "\(currentData) значение сброшено\n\n")
    }
    
}


 
