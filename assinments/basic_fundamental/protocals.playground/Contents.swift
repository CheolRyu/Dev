//: Playground - noun: a place where people can play

import UIKit

class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
        
    }
}

enum QuestionType: String {
    case trueFalse = "The Sky is blue."
    case multipleChoice = "Who is the ugliest Beatle: John, Paul, George or Ringo?"
    case shortAnswer = "What is the capital of Oregan?"
    case essay = "In 50 words, explain molecular fusion."
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]

    
}

enum AnswerType: String{
    case trueFalse = "True"
    case multipleChoice = "Sgt, Pepper"
    case shortAnswer = "Salem"
    case essay = "Molecular fusion happens when mfeowq;nfei;sbfnjdksalbfjdhlsa."
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestions() -> Question
    
}

class Quiz: QuestionGenerator {
    func generateRandomQuestions() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        
        return randomQuestion
    }
}


let quiz = Quiz()
quiz.generateRandomQuestions()




















