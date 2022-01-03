//
//  LQTSViewController.swift
//  Sicilian3
//
//  Created by Matsui Keiji on 2017/09/06.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class LQTSViewController: UIViewController {
    
    @IBOutlet var QTc:UISegmentedControl!
    @IBOutlet var Twave:UISegmentedControl!
    @IBOutlet var Notched:UISegmentedControl!
    @IBOutlet var LowHeartRate:UISegmentedControl!
    @IBOutlet var Syncope:UISegmentedControl!
    @IBOutlet var Deafness:UISegmentedControl!
    @IBOutlet var FamilyMember:UISegmentedControl!
    @IBOutlet var SchwartzScore:UILabel!
    @IBOutlet var probability:UILabel!
    @IBOutlet var resetButton:UIButton!
    
    @IBAction func myActionRUN(){
        let vQTc = Double(QTc.selectedSegmentIndex)
        let vTwave = Double(Twave.selectedSegmentIndex)
        let vNotched = Double(Notched.selectedSegmentIndex)
        let vLowHeartRate = Double(LowHeartRate.selectedSegmentIndex) * 0.5
        var vSyncope = Double(Syncope.selectedSegmentIndex)
        if vSyncope == 3.0{
            vSyncope = 2.0
        }
        let vDeafness = Double(Deafness.selectedSegmentIndex) * 0.5
        let vFamilyMember = Double(FamilyMember.selectedSegmentIndex) * 0.5
        let vSchwartzScore = vQTc + vTwave + vNotched + vLowHeartRate + vSyncope + vDeafness + vFamilyMember
        if floor(vSchwartzScore) == vSchwartzScore{
            SchwartzScore.text = String(Int(vSchwartzScore))
        }
        else{
            SchwartzScore.text = String(format: "%.1f", vSchwartzScore)
        }
        if vSchwartzScore <= 1.0{
            probability.text = "low"
        }
        if vSchwartzScore > 1.0 && vSchwartzScore < 4.0{
            probability.text = "intermediate"
        }
        if vSchwartzScore >= 4.0{
            probability.text = "high"
        }
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionReset(){
        QTc.selectedSegmentIndex = 0
        Twave.selectedSegmentIndex = 0
        Notched.selectedSegmentIndex = 0
        LowHeartRate.selectedSegmentIndex = 0
        Syncope.selectedSegmentIndex = 0
        Deafness.selectedSegmentIndex = 0
        FamilyMember.selectedSegmentIndex = 0
        SchwartzScore.text = "0"
        probability.text = "low"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
