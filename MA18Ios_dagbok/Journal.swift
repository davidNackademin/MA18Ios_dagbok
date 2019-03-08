//
//  Journal.swift
//  MA18Ios_dagbok
//
//  Created by David Svensson on 2019-03-08.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import Foundation

class Journal {
    
    private var entries = [JournalEntry]()
    
    //computed property
    var count : Int {
        return entries.count
    }
    
    func add(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        
        if index >= 0 && index <= entries.count {
            return entries[index]
        }
        
        return nil
    }
    
    
    
}
