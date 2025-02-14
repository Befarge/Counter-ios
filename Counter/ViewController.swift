//
//  ViewController.swift
//  Counter
//
//  Created by Евгений Веников on 13.02.2025.
//

import UIKit

extension UITextView {
    func appendString(text: String) {
        self.text += text
        self.scrollRangeToVisible(NSRange(location: self.text.count-1, length: 0))
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
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButton() {
        //check on max value
        guard count != Int.max else {
            historyTextView.appendString(text: "\n\(currentData) попытка увеличить значение счётчика выше максимума\n")
            return
        }
        
        count += 1
        counterLabel.text = String(count)
        historyTextView.appendString(text: "\n\(currentData) значение изменено на +1\n")
    }
    
    @IBAction func minusButton() {
        //check on min value
        guard count != 0 else {
            historyTextView.appendString(text: "\n\(currentData) попытка уменьшить значение счётчика ниже 0\n")
            return
        }
        
        count -= 1
        counterLabel.text = String(count)
        historyTextView.appendString(text: "\n\(currentData) значение изменено на -1\n")
    }
    
    @IBAction func resetButton() {
        count = 0
        counterLabel.text = String(count)
        historyTextView.appendString(text: "\n\(currentData) значение сброшено\n")
    }
    
}


 
