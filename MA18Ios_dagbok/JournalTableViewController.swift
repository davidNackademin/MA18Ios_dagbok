//
//  JournalTableViewController.swift
//  MA18Ios_dagbok
//
//  Created by David Svensson on 2019-03-08.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {
    
    let cellIdentity = "JournalEntryCell"
    let journalEntrySegueID = "journalEntrySegueId"
    let newEntrySegueId = "newEntrySegueId"
    
    //var sampleData = [String]()
    //var sampleData = (0..<10).map{"Cell \($0)"}
    //var sampleData = (0..<10).map({(index : Int) -> String in return "Cell \(index)"})
    
    let journal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0..<3 {
            let entry = JournalEntry(date: Date(), content: "Entry \(index)")
            journal.add(entry: entry)
        }
        
        
        //        for index in 0..<10 {
        //            sampleData.append("Cell \(index)")
        //        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journal.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity, for: indexPath)
        
        if let entry = journal.entry(index: indexPath.row) {
            cell.textLabel?.text = "\(entry)"
        }//sampleData[indexPath.row]
        
        return cell
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == journalEntrySegueID {
            
            guard let destination = segue.destination as? JournalEntryViewController else {return}
            guard let cell = sender as? UITableViewCell else {return}
            guard let indexPath = tableView.indexPath(for: cell) else {return}
            guard let entry = journal.entry(index: indexPath.row) else {return}
            
            destination.entry = entry
            
            //            if let destination = segue.destination as? JournalEntryViewController,
            //                let cell = sender as? UITableViewCell,
            //                let indexPath = tableView.indexPath(for: cell),
            //                let entry = journal.entry(index: indexPath.row) {
            //
            //                    destination.entry = entry
            //                }
            
        }
        if segue.identifier == newEntrySegueId {
            if let destination = segue.destination as? NewJournalEntryViewController   {
                destination.journal = journal
            }
        }
        
        
        
        
        
        
        
        
    }
    
    
}



