//
//  JournalEntry.swift
//  MA18Ios_dagbok
//
//  Created by David Svensson on 2019-03-08.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import Foundation

class JournalEntry: CustomStringConvertible {
   
    //computed property
    var description: String {
        return dateFormater.string(from: date)
    }
    
    var date : Date
    var content: String
    let dateFormater = DateFormatter()
    
    init(date: Date, content: String) {
        self.date = date
        self.content = content
        dateFormater.dateFormat = "yyyy-MM-dd"
      
    }
}
