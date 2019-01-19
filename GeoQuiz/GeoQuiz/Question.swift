//
//  Question.swift
//  GeoQuiz
//
//  Created by castle on 1/18/19.
//  Copyright © 2019 castle. All rights reserved.
//

import Foundation

class Question {
    var mText : String = ""
    var mAnswerTrue: Bool = false
    
    init (mText: String, mAnswerTrue: Bool) {
        self.mText = mText
        self.mAnswerTrue = mAnswerTrue
    }
    
    func getText() -> String {
        return self.mText
    }
    
    func setTextResId(text: String) {
        mText = text
    }
    
    func isAnswerTrue() -> Bool {
        return mAnswerTrue
    }
    
    func setAnswerTrue(answerTrue: Bool) {
        mAnswerTrue = answerTrue
    }
}
