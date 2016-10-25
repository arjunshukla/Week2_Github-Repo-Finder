//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Arjun Shukla on 10/24/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lblMinStars: UILabel!
    @IBOutlet weak var sliderMinStars: UISlider!
    @IBOutlet weak var tableViewLanguages: UITableView!
    @IBOutlet weak var switchLanguages: UISwitch!
    
    var doneHandler: ((Int) -> Void)?
    
    
    var arrLanguages: [String] = ["Swift", "Objective-C", "Java", "Python", "Scala", "Javascript", "C++", "HTML"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewLanguages.isHidden = !switchLanguages.isOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onLanguageSwitchToggle(_ sender: AnyObject) {
        tableViewLanguages.isHidden = !switchLanguages.isOn
    }


    @IBAction func whenSliderValueChanged(_ sender: AnyObject) {
        lblMinStars.text = "\(Int(sliderMinStars.value))"
    }
    
    @IBAction func onCancelBtnTap(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSaveBtnTap(_ sender: AnyObject) {
        doneHandler!(Int(sliderMinStars.value))
//        dismiss(animated: true, completion: nil)
    }
    
    // MARK: TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrLanguages.count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "languageCell", for: indexPath) as! LanguageTableViewCell
   
        cell.lblLanguageName.text = arrLanguages[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated:true)
        if let cell = tableView.cellForRow(at: indexPath) {
            if(cell.accessoryType == .checkmark){
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            
        }
         tableView.deselectRow(at: indexPath, animated:true)
    }
    
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        //        tableView.deselectRow(at: indexPath, animated:true)
//        if let cell = tableView.cellForRow(at: indexPath) {
//            cell.accessoryType = .none
//            
//        }
//    }
}
