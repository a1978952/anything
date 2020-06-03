//
//  ListTableViewController.swift
//  anything
//
//  Created by 藤原琉暉 on 2020/05/25.
//  Copyright © 2020 fujiwara lupinus. All rights reserved.
//

import UIKit
class ListTableViewController: UITableViewController {
    
    
     
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        }
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
        if saveData.array(forKey: "WORD") != nil{
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
        
        tableView.reloadData()
        
    }
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

       override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!  ListTableViewCell
        
        
        let nowIndexPathDictionary = wordArray[indexPath.row]
        
        cell.suuziLabel.text = nowIndexPathDictionary["suuzi"]
        cell.naiyouLabel.text = nowIndexPathDictionary["naiyou"]
        
        return cell
        
         
    }
    @IBAction func back(){
          self.dismiss(animated: true, completion: nil)
      }
    
    
    func ListTableView(_ ListTableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
         {
             return true
         }

         func ListTableView(_ ListTableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
             if editingStyle == UITableViewCell.EditingStyle.delete {
                 wordArray.remove(at: indexPath.row)
                 tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
             }
         }
      
      
            
        }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



