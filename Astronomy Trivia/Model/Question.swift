//
//  Question.swift
//  Astronomy Trivia
//
//  Created by Heavy Taylor on 9/17/23.

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    //initializers
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
