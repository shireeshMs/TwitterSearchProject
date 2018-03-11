//
//  SearchedViewController.swift
//  TwitterSearchProject
//
//  Created by PiancaSiri on 10/03/18.
//  Copyright © 2018 PiancaSiri. All rights reserved.
//

import UIKit


class SearchedViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate
{

    @IBOutlet weak var SearchTF: UITextField!
    
    @IBOutlet weak var objTblVw: UITableView!
    
    @IBOutlet weak var objShowingResultLbl: UILabel!

    var searchActive : Bool = false
    var data = ["San Francisco","New York","San Jose","Chicago","Los Angeles","Austin","Seattle"]
    var filtered:[String] = []
    var searchArr  = NSMutableArray()
    var shoppingList:NSArray = [] //to store whole data
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //you can place dynamic data instead of this
        // Do any additional setup after loading the view.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var searchText = textField.text
        filtered = data.filter({ (text) -> Bool in
            let tmp: NSString = text as NSString
            let range = tmp.range(of: searchText!, options: NSString.CompareOptions.caseInsensitive)
            return range.location != NSNotFound
        })
        if(filtered.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        objTblVw.reloadData()
        return true
    }
   
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchActive) {
            return filtered.count
        }
        return data.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:ObjTableVWCell = tableView.dequeueReusableCell(withIdentifier:"Cell")  as! ObjTableVWCell
        if(searchActive){
            cell.textLabel?.text = filtered[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row];
        }
        // set the text from the data model
        
        return cell
    }

    

}
