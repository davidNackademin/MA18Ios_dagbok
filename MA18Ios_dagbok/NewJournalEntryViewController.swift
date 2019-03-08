//
//  NewJournalEntryViewController.swift
//  MA18Ios_dagbok
//
//  Created by David Svensson on 2019-03-08.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryText: UITextView!
    
    var journal : Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        journalEntryText.becomeFirstResponder()

    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        let entry = JournalEntry(date: Date(), content: journalEntryText.text)
        
        journal?.add(entry: entry)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
