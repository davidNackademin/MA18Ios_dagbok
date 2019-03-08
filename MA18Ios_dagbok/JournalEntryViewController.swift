//
//  JournalEntryViewController.swift
//  MA18Ios_dagbok
//
//  Created by David Svensson on 2019-03-08.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContent: UITextView!
    
    
    var entry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        journalEntryContent.text = entry?.content
        
    }
    
}
