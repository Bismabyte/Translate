//
//  ViewController.swift
//  Translate
//
//  Created by Bisma Baig on 16/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func translateButtonTapped(_ sender: UIButton) {
        guard let inputText = inputTextField.text, !inputText.isEmpty else {
            resultLabel.text = "Please enter text"
            return
        }

        // Simulate translation (replace this with actual translation logic)
        let translatedText = translateText(inputText)

        resultLabel.text = "Translated: \(translatedText)"
    }

    func translateText(_ text: String) -> String {
        // Simulate translation logic (replace this with actual translation service integration)
        return "Translated: \(text)"
    }
}
