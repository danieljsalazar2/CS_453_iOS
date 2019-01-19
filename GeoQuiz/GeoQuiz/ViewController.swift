//
//  ViewController.swift
//  GeoQuiz
//
//  Created by castle on 1/18/19.
//  Copyright © 2019 castle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mTextView: UITextView!
    @IBOutlet weak var mTrueButton: UIButton!
    @IBOutlet weak var mFalseButton: UIButton!
    @IBOutlet weak var mLeftArrow: UIButton!
    @IBOutlet weak var mRightArrow: UIButton!
    
    var mCurrentIndex = 0
    var mQuestionBank: [Question] = [
        Question(mText: "The Pacific Ocean is larger than the Atlantic Ocean.", mAnswerTrue: true),
        Question(mText: "Canberra is the capital of Australia", mAnswerTrue: true),
        Question(mText: "the Suez Canal connects the Red Sea and the Indian Ocean.", mAnswerTrue: false),
        Question(mText: "The source of the Nile River is Egypt.", mAnswerTrue: false),
        Question(mText: "The Amazon river is the longest river in the Americas", mAnswerTrue: true),
        Question(mText: "Lake Baikal is the world\'s oldest and deepest freshwater lake.", mAnswerTrue: true),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mTextView.text = mQuestionBank[mCurrentIndex].getText();
    }
    @IBAction func TrueButtonClicked(_ sender: Any) {
        CheckAnswer(userInput: true)
    }
    @IBAction func FalseButtonClicked(_ sender: Any) {
        CheckAnswer(userInput: false)
    }
    @IBAction func LeftArrowClicked(_ sender: Any) {
        mCurrentIndex = (mCurrentIndex - 1) % mQuestionBank.count;
        mTextView.text = mQuestionBank[mCurrentIndex].getText()
    }
    @IBAction func RightArrowClicked(_ sender: Any) {
        mCurrentIndex = (mCurrentIndex + 1) % mQuestionBank.count;
        mTextView.text = mQuestionBank[mCurrentIndex].getText()
    }
    
    func CheckAnswer(userInput: Bool) {
        let alert = UIAlertController(title: "My Alert", message: (userInput == mQuestionBank[mCurrentIndex].isAnswerTrue()) ? ("Correct!") : ("Incorrect!"), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

