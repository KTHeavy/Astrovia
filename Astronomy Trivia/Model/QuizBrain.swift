//
//  QuizBrain.swift
//  Astronomy Trivia
//
//  Created by Heavy Taylor on 9/17/23.
import Foundation

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    
    //create an array of the questions
    let quiz = [
        //add questions
        Question(q: "What is the largest planet in our solar system?", a: ["Venus", "Saturn", "Mars", "Neptune"], correctAnswer: "Saturn"),
        Question(q: "Which is a type of star that has exhausted its nuclear fuel and collapsed in on itself?", a: ["White dwarf", "Red giant", "Protostar", "Neutron Star"], correctAnswer: "White dwarf"),
        Question(q: "What causes the different phases of the Moon as observed from Earth?", a: ["Earth's shadow", "Changes in the Moon's temperature", "Sunlight illuminating different portions of the Moon", "Earth's rotation speed"], correctAnswer: "Sunlight illuminating different portions of the Moon"),
        Question(q: "Which planet is known for its striking rings made primarily of ice particles and rock?", a: ["Jupiter", "Uranus", "Saturn", "Neptune"], correctAnswer: "Saturn"),
        Question(q: "What is the term for a meteoroid that survives its passage through Earth's atmosphere and lands on the surface?", a: ["Meteor", "Meteorite", "Meteoroid", "Comet"], correctAnswer: "Meteorite"),
        Question(q: "What is the closest star to our solar system?", a: ["Proxima Centauri", "Alpha Centauri A", "Sirius", "Betelgeuse"], correctAnswer: "Proxima Centauri"),
        Question(q: "Which space telescope has provided stunning images and data on distant galaxies, nebulae, and other celestial objects?", a: ["Hubble Space Telescope", "James Webb Space Telescope", "Kepler Space Telescope", "Spitzer Space Telescope"], correctAnswer: "Hubble Space Telescope"),
        Question(q: "What is the name for the apparent path that the Sun appears to trace across the sky over the course of a year?", a: ["Zodiac", "Equator", "Meridian", "Horizon"], correctAnswer: "Zodiac"),
        Question(q: "What is the process by which a massive star ends its life in a spectacular explosion, briefly outshining an entire galaxy?", a: ["Supernova", "Black hole formation", "Red giant phase", "Quasar formation"], correctAnswer: "Supernova"),
        Question(q: "What is the term for a group of stars that form a recognizable pattern or shape in the night sky?", a: ["Constellation", "Galaxy", "Asterism", "Nebula"], correctAnswer: "Constellation")
    ]
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float (questionNumber) / Float (quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer (userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
