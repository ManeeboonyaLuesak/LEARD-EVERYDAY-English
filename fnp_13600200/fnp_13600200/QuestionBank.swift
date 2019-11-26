//
//  QuestionBank.swift
//  fnp_13600200
//
//  Created by songsuay on 11/25/19.
//  Copyright © 2019 ICTSUIM. All rights reserved.
//

import Foundation
class QuestionBank {
    var list = [Question]()
    
    init() {
        list.append(Question(questionText: "Present",choiceA: "ของขวัญ",choiceB: "นำเสนอ",answer: 1))
        list.append(Question(questionText: "Snowflake",choiceA: "บิงซู",choiceB: "เกล็ดหิมะ",answer: 2))
        list.append(Question(questionText: "Chimney",choiceA: "ปล่องไฟ",choiceB: "มีเสน่ห์",answer: 1))
        list.append(Question(questionText: "Bells",choiceA: "ล้อลาก",choiceB: "ระฆัง",answer: 2))
        list.append(Question(questionText: "Reindee",choiceA: "ลามะ",choiceB: "เรนเดียร์",answer: 2))
        list.append(Question(questionText: "Gingerbread man cookie",choiceA: "ขนมปังขิง",choiceB: "ขนมคุกกี้",answer: 1))
        list.append(Question(questionText: "Candy Cane",choiceA: "ลูกอมไม้กวาด",choiceB: "ลูกอมไม้ถูพื้น",answer: 1))
        list.append(Question(questionText: "Snowman",choiceA: "สโนว์แมน",choiceB: "ลูกบอล",answer: 1))
        list.append(Question(questionText: "Santa Claus",choiceA: "ซานต้าคลอส",choiceB: "บุรุษไปรษณีย์",answer: 1))
        list.append(Question(questionText: "Stockings",choiceA: "ถุงมือ",choiceB: "ถุงเท้า",answer: 2))
        
    }
}
