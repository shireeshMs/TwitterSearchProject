//
//  SearchedViewController.swift
//  TwitterSearchProject
//
//  Created by PiancaSiri on 10/03/18.
//  Copyright © 2018 PiancaSiri. All rights reserved.
//

import UIKit

class SearchedViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    @IBOutlet weak var SearchTF: UITextField!
    
    @IBOutlet weak var objTblVw: UITableView!
    
    @IBOutlet weak var objShowingResultLbl: UILabel!
    
    var searchArr  = NSMutableArray()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
