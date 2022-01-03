//
//  SicilianViewController.swift
//  Sicilian3
//
//  Created by Matsui Keiji on 2017/09/06.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class SicilianViewController: UIViewController {
    
    @IBOutlet var NaChannel:UISegmentedControl!
    @IBOutlet var CaChannel:UISegmentedControl!
    @IBOutlet var KChannel:UISegmentedControl!
    @IBOutlet var ChIf:UISegmentedControl!
    @IBOutlet var AlfaBlock:UISegmentedControl!
    @IBOutlet var BetaBlock:UISegmentedControl!
    @IBOutlet var M2Block:UISegmentedControl!
    @IBOutlet var A1Ag:UISegmentedControl!
    @IBOutlet var NAKATP:UISegmentedControl!
    @IBOutlet var AntiArrhythmia1:UILabel!
    @IBOutlet var LVcont1:UILabel!
    @IBOutlet var sinusRate1:UILabel!
    @IBOutlet var extraCardEfx1:UILabel!
    @IBOutlet var PRtime1:UILabel!
    @IBOutlet var QRStime1:UILabel!
    @IBOutlet var JT1:UILabel!
    @IBOutlet var AntiArrhythmia2:UILabel!
    @IBOutlet var LVcont2:UILabel!
    @IBOutlet var sinusRate2:UILabel!
    @IBOutlet var extraCardEfx2:UILabel!
    @IBOutlet var PRtime2:UILabel!
    @IBOutlet var QRStime2:UILabel!
    @IBOutlet var JT2:UILabel!
    @IBOutlet var successfullyCompleted:UILabel!
    @IBOutlet var AsNa0:UILabel!
    @IBOutlet var AsNa1:UILabel!
    @IBOutlet var AsNa2:UILabel!
    @IBOutlet var AsNa3:UILabel!
    @IBOutlet var AsNa4:UILabel!
    @IBOutlet var AsCa0:UILabel!
    @IBOutlet var AsCa1:UILabel!
    @IBOutlet var AsCa2:UILabel!
    @IBOutlet var AsCa3:UILabel!
    @IBOutlet var AsK0:UILabel!
    @IBOutlet var AsK1:UILabel!
    @IBOutlet var AsK2:UILabel!
    @IBOutlet var AsK3:UILabel!
    @IBOutlet var AsIf0:UILabel!
    @IBOutlet var AsIf1:UILabel!
    @IBOutlet var AsAlfa0:UILabel!
    @IBOutlet var AsAlfa1:UILabel!
    @IBOutlet var AsAlfa2:UILabel!
    @IBOutlet var AsBeta0:UILabel!
    @IBOutlet var AsBeta1:UILabel!
    @IBOutlet var AsBeta2:UILabel!
    @IBOutlet var AsM0:UILabel!
    @IBOutlet var AsM1:UILabel!
    @IBOutlet var AsM2:UILabel!
    @IBOutlet var AsM3:UILabel!
    @IBOutlet var AsA1Ag0:UILabel!
    @IBOutlet var AsA1Ag1:UILabel!
    @IBOutlet var AsNAK0:UILabel!
    @IBOutlet var AsNAK1:UILabel!
    @IBOutlet var ResetButton:UIButton!
    
    var mySelectNa = false
    var mySelectCa = false
    var mySelectK = false
    var mySelectIf = false
    var mySelectAlfa = false
    var mySelectBeta = false
    var mySelectM2 = false
    var mySelectA1Ag = false
    var mySelectNAKATP = false
    
    var vNaChannel = 0
    var vCaChannel = 0
    var vKChannel = 0
    var vChIf = 0
    var vAlfaBlock = 0
    var vBetaBlock = 0
    var vM2Block = 0
    var vA1Ag = 0
    var vNAKATP = 0
    var antiArrhythmiaArray1 = ["","","","","","",""]
    var antiArrhythmiaArray2 = ["","","","","","",""]
    
    func antiArrhythmiaFeature(){
        AntiArrhythmia1.text = antiArrhythmiaArray1[0]
        LVcont1.text = antiArrhythmiaArray1[1]
        sinusRate1.text = antiArrhythmiaArray1[2]
        extraCardEfx1.text = antiArrhythmiaArray1[3]
        PRtime1.text = antiArrhythmiaArray1[4]
        QRStime1.text = antiArrhythmiaArray1[5]
        JT1.text = antiArrhythmiaArray1[6]
        AntiArrhythmia2.text = antiArrhythmiaArray2[0]
        LVcont2.text = antiArrhythmiaArray2[1]
        sinusRate2.text = antiArrhythmiaArray2[2]
        extraCardEfx2.text = antiArrhythmiaArray2[3]
        PRtime2.text = antiArrhythmiaArray2[4]
        QRStime2.text = antiArrhythmiaArray2[5]
        JT2.text = antiArrhythmiaArray2[6]
    }
    
    func myMethod(){
        vNaChannel = NaChannel.selectedSegmentIndex
        vCaChannel = CaChannel.selectedSegmentIndex
        vKChannel = KChannel.selectedSegmentIndex
        vChIf = ChIf.selectedSegmentIndex
        vAlfaBlock = AlfaBlock.selectedSegmentIndex
        vBetaBlock = BetaBlock.selectedSegmentIndex
        vM2Block = M2Block.selectedSegmentIndex
        vA1Ag = A1Ag.selectedSegmentIndex
        vNAKATP = NAKATP.selectedSegmentIndex
    }
    
    func AllStarNull(){
        AsNa0.text = ""
        AsNa1.text = ""
        AsNa2.text = ""
        AsNa3.text = ""
        AsNa4.text = ""
        AsCa0.text = ""
        AsCa1.text = ""
        AsCa2.text = ""
        AsCa3.text = ""
        AsK0.text = ""
        AsK1.text = ""
        AsK2.text = ""
        AsK3.text = ""
        AsIf0.text = ""
        AsIf1.text = ""
        AsAlfa0.text = ""
        AsAlfa1.text = ""
        AsAlfa2.text = ""
        AsBeta0.text = ""
        AsBeta1.text = ""
        AsBeta2.text = ""
        AsM0.text = ""
        AsM1.text = ""
        AsM2.text = ""
        AsM3.text = ""
        AsA1Ag0.text = ""
        AsA1Ag1.text = ""
        AsNAK0.text = ""
        AsNAK1.text = ""
    }
    
    func HanteiMethod(){
        myMethod()
        antiArrhythmiaArray1 = ["","","","","","",""]
        antiArrhythmiaArray2 = ["","","","","","",""]
        antiArrhythmiaFeature()
        successfullyCompleted.text = ""
        if vNaChannel == 1 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["lidocain","→","→","mod","","","↓"]
            antiArrhythmiaArray2 = ["mexiletine","→","→","mod","","","↓"]
            antiArrhythmiaFeature()
        }
        if vNaChannel == 2 && vCaChannel == 0 && vKChannel == 2 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["procainamide","↓","→","high","↑","↑","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa2.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsK0.text = "•"
            AsK2.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsAlfa1.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 4 && vCaChannel == 0 && vKChannel == 2 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 1 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["disopyramide","↓","→","mod","↑↓","↑","↑"]
            antiArrhythmiaArray2 = ["pirmenol","↓","↑","low","↑","↑","↑→"]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa2.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsBeta0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 2 && vCaChannel == 0 && vKChannel == 2 && vChIf == 0 && vAlfaBlock == 1
            && vBetaBlock == 0 && vM2Block == 1 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["quinidine","→","↑","mod","↑↓","↑","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa2.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsK0.text = "•"
            AsK2.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 2 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 1 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["propafenone","↓","↓","low","↑","↑",""]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa2.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsK0.text = "•"
            AsK2.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsBeta1.text = "•"
            AsIf0.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 3 && vCaChannel == 1 && vKChannel == 1 && vChIf == 1 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["aprindine","→","→","mod","↑","↑","→"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
        }
        if vNaChannel == 4 && vCaChannel == 1 && vKChannel == 2 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 1 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["cibenzoline","↓","→","low","↑","↑","→"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsBeta0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 4 && vCaChannel == 0 && vKChannel == 1 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["flecainide","↓","→","low","↑","↑",""]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsBeta0.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 4 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["pilsicainide","↓→","→","low","↑","","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsBeta0.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 1 && vCaChannel == 3 && vKChannel == 2 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["bepridil","?","↓","low","","","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsCa1.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 1 && vCaChannel == 3 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 2
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["verapamil","↓","↓","low","↑","",""]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa1.text = "•"
            AsCa1.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 0 && vCaChannel == 2 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["diltiazem","↓","↓","low","↑","",""]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
        }
        if vNaChannel == 0 && vCaChannel == 0 && vKChannel == 3 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 2 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["sotalol","↓","↓","low","↑","","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsK0.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 1 && vCaChannel == 1 && vKChannel == 3 && vChIf == 0 && vAlfaBlock == 2
            && vBetaBlock == 1 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["amiodarone","→","↓","high","↑","","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa1.text = "•"
            AsCa1.text = "•"
            AsCa3.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa2.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 0 && vCaChannel == 0 && vKChannel == 3 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["nifekalant","→","→","low","","","↑"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 0 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 2 && vM2Block == 0 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["nadolol","↓","↓","low","↑","",""]
            antiArrhythmiaArray2 = ["propranolol","↓","↓","low","↑","",""]
            antiArrhythmiaFeature()
            AllStarNull()
            AsNa0.text = "•"
            AsCa0.text = "•"
            AsK0.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }
        if vNaChannel == 0 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 2 && vA1Ag == 0 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["atropine","→","↑","mod","↓","",""]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
        }
        if vNaChannel == 0 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 0 && vA1Ag == 1 && vNAKATP == 0 {
            antiArrhythmiaArray1 = ["ATP","?","↓","low","↑","",""]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
        }
        if vNaChannel == 0 && vCaChannel == 0 && vKChannel == 0 && vChIf == 0 && vAlfaBlock == 0
            && vBetaBlock == 0 && vM2Block == 3 && vA1Ag == 0 && vNAKATP == 1 {
            antiArrhythmiaArray1 = ["digoxin","↑","↓","high","↑","","↓"]
            antiArrhythmiaArray2 = ["","","","","","",""]
            antiArrhythmiaFeature()
        }
        if AntiArrhythmia1.text?.isEmpty == true {
            AntiArrhythmia1.text = "               Please change some indices"
            AntiArrhythmia2.text = "               according to the *focus sign."
            antiArrhythmiaArray1 = ["follow","","","","","",""]
            antiArrhythmiaArray2 = ["•focus","","","","","",""]
            antiArrhythmiaFeature()
            if vNaChannel == 2 {
                AllStarNull()
                AsNa2.text = "•"
                AsCa0.text = "•"
                AsK0.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsAlfa1.text = "•"
                AsBeta0.text = "•"
                AsBeta1.text = "•"
                AsM0.text = "•"
                AsM1.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 2)
            if vNaChannel == 2 && vKChannel == 2 {
                AllStarNull()
                AsNa2.text = "•"
                AsCa0.text = "•"
                AsK2.text = "•"
                AsAlfa0.text = "•"
                AsAlfa1.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsM1.text = "•"
                AsIf0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 2 && vKChannel == 2)
            if vNaChannel == 4 && vKChannel == 2 {
                AllStarNull()
                AsNa4.text = "•"
                AsK2.text = "•"
                AsM1.text = "•"
                AsCa0.text = "•"
                AsCa1.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsBeta0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 4 && vKChannel == 2)
            if vNaChannel == 1 && vCaChannel == 1 {
                AllStarNull()
                AsNa1.text = "•"
                AsCa1.text = "•"
                AsCa3.text = "•"
                AsK3.text = "•"
                AsAlfa2.text = "•"
                AsBeta1.text = "•"
                AsIf0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 1 && vCaChannel == 1)
            if vNaChannel == 1 && vCaChannel == 3 {
                AllStarNull()
                AsNa1.text = "•"
                AsCa3.text = "•"
                AsK0.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsAlfa2.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 1 && vCaChannel == 3)
            if vNaChannel == 1 && vKChannel == 3 {
                AllStarNull()
                AsNa1.text = "•"
                AsCa1.text = "•"
                AsK3.text = "•"
                AsAlfa2.text = "•"
                AsBeta1.text = "•"
                AsIf0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 1 && vKChannel == 3)
            if vKChannel == 2 && vM2Block == 1 {
                AllStarNull()
                AsNa2.text = "•"
                AsNa4.text = "•"
                AsCa0.text = "•"
                AsCa1.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsAlfa1.text = "•"
                AsBeta0.text = "•"
                AsM1.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vKChannel == 2 && vM2Block == 1)
            if vCaChannel == 3 && vKChannel == 2 && vNaChannel != 4 {
                AllStarNull()
                AsNa1.text = "•"
                AsCa3.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vCaChannel == 3 && vKChannel == 2 && vNaChannel!=4)
            if vNaChannel == 4 && vCaChannel == 3 && vKChannel == 2 {
                AllStarNull()
                AsNa1.text = "•"
                AsNa4.text = "•"
                AsCa0.text = "•"
                AsCa1.text = "•"
                AsCa3.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 4 && vCaChannel == 3 && vKChannel == 2)
            if vNaChannel == 2 && vKChannel == 2 {
                AllStarNull()
                AsNa2.text = "•"
                AsCa0.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsAlfa1.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsM1.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 2 && vKChannel == 2)
            if vNaChannel == 1 && vKChannel == 2 {
                AllStarNull()
                AsNa1.text = "•"
                AsCa3.text = "•"
                AsK0.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 1 && vKChannel == 2)
            if vNaChannel == 4 && vCaChannel == 0 && vKChannel == 2 && vM2Block == 0 && vBetaBlock == 0 {
                AllStarNull()
                AsNa4.text = "•"
                AsCa0.text = "•"
                AsCa1.text = "•"
                AsK0.text = "•"
                AsK1.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsM1.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//(vNaChannel == 4 && vCaChannel == 0 && vKChannel == 2 && vM2Block == 0 && vBetaBlock == 0)
            if vNaChannel == 1 && vAlfaBlock == 2 && vKChannel == 0 {
                AllStarNull()
                AsNa1.text = "•"
                AsCa1.text = "•"
                AsCa3.text = "•"
                AsK0.text = "•"
                AsK3.text = "•"
                AsIf0.text = "•"
                AsAlfa2.text = "•"
                AsBeta0.text = "•"
                AsBeta1.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 1 && vAlfaBlock == 2 && vKChannel == 0)
        }//if [AntiArrhythmia1.text length] == 0)
        else {
            successfullyCompleted.text = "Successfully completed!"
        }
    }

    @IBAction func myActionNa() {
        mySelectNa = true
        myMethod()
        if vNaChannel == 0 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            AllStarNull()
            AsNa0.text = "•"
            AsCa0.text = "•"
            AsCa2.text = "•"
            AsK0.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsBeta0.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
        }//if vNaChannel == 0)
        if vNaChannel == 1 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vCaChannel == 1 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=3
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=2
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=1
                }
            }
            if vKChannel == 2 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=3
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
            }//if vKChannel == 2)
            if vCaChannel == 3 && vAlfaBlock == 2 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=0
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
            }//if vCaChannel == 3 && vAlfaBlock == 2)
            if vKChannel == 3 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=1
                }
                if mySelectIf == false {
                    ChIf.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=2
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=1
                }
            }//if vKChannel == 3)
            AllStarNull()
            AsNa1.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsAlfa0.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsM0.text = "•"
            AsA1Ag0.text = "•"
            AsNAK0.text = "•"
        }//if vNaChannel == 1)
        if vNaChannel == 2 {
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vKChannel == 2 && vAlfaBlock == 1 {
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }
            if vKChannel == 0 && vBetaBlock == 1 {
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
            }
            if vKChannel == 2 && vM2Block == 1 {
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=1
                }
            }
            AsNa0.text = ""
            AsNa1.text = ""
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = "•"
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vNaChannel == 2)
        if vNaChannel == 3 {
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=1
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=1
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=1
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = ""
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = "•"
            AsNa4.text = ""
            AsCa0.text = ""
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = ""
            AsK1.text = "•"
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = ""
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vNaChannel == 3)
        if vNaChannel == 4 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vCaChannel == 1 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=2
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }
            if vCaChannel == 0 && vKChannel == 2 {
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }
            if vCaChannel == 0 && vKChannel == 1 {
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
            }
            AsNa0.text = ""
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vNaChannel == 4)
        HanteiMethod()
        mySelectNa = false
    }//@IBAction func myActionNa:(id)sender
    
    @IBAction func myActionCa() {
        mySelectCa = true
        myMethod()
        if vCaChannel == 0 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
            if vNaChannel == 4 && vKChannel == 2 {
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }//if vNaChannel == 4 && vKChannel == 2)
        }//if vCaChannel == 0)
        if vCaChannel == 1 {
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vKChannel == 1 || vChIf == 1 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=3
                }
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=1
                }
                if mySelectIf == false {
                    ChIf.selectedSegmentIndex=1
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
            } //if vKChannel == 1 || vChIf == 1)
            if vKChannel == 2 || vM2Block == 1 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=4
                }
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=2
                }
                if mySelectIf == false {
                    ChIf.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }//if vKChannel == 2 || vM2Block == 1)
            if vNaChannel == 1 || vKChannel == 3 || vAlfaBlock == 2 || vBetaBlock == 1 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=1
                }
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=3
                }
                if mySelectIf == false {
                    ChIf.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=2
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=1
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
            }//if vNaChannel == 1 || vKChannel == 3 || vAlfaBlock == 2 || vBetaBlock == 1)
            if vNaChannel == 4 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=2
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }
            AsNa0.text = ""
            AsNa1.text = "•"
            AsNa2.text = ""
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = ""
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vCaChannel == 1)
        if vCaChannel == 2 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=0
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = ""
            AsCa1.text = ""
            AsCa2.text = "•"
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vCaChannel == 2) 
        if vCaChannel == 3 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=1
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vKChannel == 2 {
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
            }
            if vAlfaBlock == 2 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=0
                }
            }
            AsNa0.text = ""
            AsNa1.text = "•"
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = ""
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = "•"
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vCaChannel == 3)
        HanteiMethod()
        mySelectCa = false
    }//@IBAction func myActionCa:(id)sender
    
    @IBAction func myActionK() {
        mySelectK = true
        myMethod()
        if vKChannel == 0 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
            if vNaChannel == 4 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=0
                }
                if mySelectIf == false {
                    ChIf.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
                if mySelectA1Ag == false {
                    A1Ag.selectedSegmentIndex=0
                }
                if mySelectNAKATP == false {
                    NAKATP.selectedSegmentIndex=0
                }
                AllStarNull()
                AsNa4.text = "•"
                AsCa0.text = "•"
                AsCa1.text = "•"
                AsK0.text = "•"
                AsK1.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsM1.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 4)
            if vNaChannel == 2 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=1
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
                if mySelectA1Ag == false {
                    A1Ag.selectedSegmentIndex=0
                }
                if mySelectNAKATP == false {
                    NAKATP.selectedSegmentIndex=0
                }
            }//if vNaChannel == 2)
            if vCaChannel == 3 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=1
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=2
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
                if mySelectA1Ag == false {
                    A1Ag.selectedSegmentIndex=0
                }
                if mySelectNAKATP == false {
                    NAKATP.selectedSegmentIndex=0
                }
                AllStarNull()
                AsNa1.text = "•"
                AsCa3.text = "•"
                AsK0.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsAlfa2.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vCaChannel == 3)
        }//if vKChannel == 0)
        if vKChannel == 1 {
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vCaChannel == 1 && vNaChannel != 4 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=3
                }
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=1
                }
                if mySelectIf == false {
                    ChIf.selectedSegmentIndex=1
                }
            }//if vCaChannel == 1 && vNaChannel!=4)
            if vNaChannel == 4 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=0
                }
            }//if vNaChannel == 4)
            AsNa0.text = ""
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = ""
            AsK1.text = "•"
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vKChannel == 1)
        if vKChannel == 2 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vNaChannel == 1 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=3
                }
            }
            if vCaChannel == 1 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=4
                }
            }
            if vNaChannel == 4 {
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }
            if vCaChannel == 3 {
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
            }
            if vNaChannel == 2 && vCaChannel == 0 && vAlfaBlock == 1 {
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=1
                }
            }
            AsNa0.text = ""
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = "•"
            AsK0.text = ""
            AsK1.text = ""
            AsK2.text = "•"
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vKChannel == 2)
        if vKChannel == 3 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vBetaBlock == 2 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=0
                }
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
            }
            if vNaChannel == 1 || vCaChannel == 1 || vAlfaBlock == 2 || vBetaBlock == 1 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=1
                }
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=1
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=2
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=1
                }
            }
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = ""
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vKChannel == 3)
        HanteiMethod()
        mySelectK = false
    }//@IBAction func myActionK:(id)sender
    
    @IBAction func myActionChIf() {
        mySelectIf = true
        myMethod()
        if vChIf == 0 {
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
        }//if vChIf == 0)
        if vChIf == 1 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=3
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=1
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=1
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
        }//if vChIf == 1)
        AsNa0.text = ""
        AsNa1.text = ""
        AsNa2.text = ""
        AsNa3.text = "•"
        AsNa4.text = ""
        AsCa0.text = ""
        AsCa1.text = "•"
        AsCa2.text = ""
        AsCa3.text = ""
        AsK0.text = ""
        AsK1.text = "•"
        AsK2.text = ""
        AsK3.text = ""
        AsIf0.text = ""
        AsIf1.text = "•"
        AsAlfa0.text = "•"
        AsAlfa1.text = ""
        AsAlfa2.text = ""
        AsBeta0.text = "•"
        AsBeta1.text = ""
        AsBeta2.text = ""
        AsM0.text = "•"
        AsM1.text = ""
        AsM2.text = ""
        AsM3.text = ""
        AsA1Ag0.text = "•"
        AsA1Ag1.text = ""
        AsNAK0.text = "•"
        AsNAK1.text = ""
        HanteiMethod()
        mySelectIf = false
    }//@IBAction func myActionChIf:(id)sender
    
    @IBAction func myActionAlfa() {
        mySelectAlfa = true
        myMethod()
        if vAlfaBlock == 0 {
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
            if vNaChannel == 1 && vCaChannel == 3 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=2
                }
                AllStarNull()
                AsNa1.text = "•"
                AsCa3.text = "•"
                AsK0.text = "•"
                AsK2.text = "•"
                AsIf0.text = "•"
                AsAlfa0.text = "•"
                AsAlfa2.text = "•"
                AsBeta0.text = "•"
                AsM0.text = "•"
                AsA1Ag0.text = "•"
                AsNAK0.text = "•"
            }//if vNaChannel == 1 && vCaChannel == 3)
            if vNaChannel == 2 && vKChannel == 2 {
                if mySelectM2 == false {
                    M2Block.selectedSegmentIndex=0
                }
            }//if vNaChannel == 2 && vKChannel == 2)
        }//if vAlfaBlock == 0)
        if vAlfaBlock == 1 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=2
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=2
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=1
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = ""
            AsNa1.text = ""
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = ""
            AsK1.text = ""
            AsK2.text = "•"
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = ""
            AsAlfa1.text = "•"
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = ""
            AsM1.text = "•"
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vAlfaBlock == 1)
        if vAlfaBlock == 2 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=1
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vCaChannel == 3 {
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=0
                }
            }
            if vNaChannel == 1 && vCaChannel == 3 {
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=0
                }
            }
            if vCaChannel == 1 || vKChannel == 3 || vBetaBlock == 1 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=1
                }
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=3
                }
                if mySelectBeta == false {
                    BetaBlock.selectedSegmentIndex=1
                }
            }
            AsNa0.text = ""
            AsNa1.text = "•"
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = ""
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = ""
            AsAlfa1.text = ""
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vAlfaBlock == 2)
        HanteiMethod()
        mySelectAlfa = false
    }//@IBAction func myActionAlfa:(id)sender
    
    @IBAction func myActionBeta() {
        mySelectBeta = true
        myMethod()
        if vBetaBlock == 0 {
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
        }//if vBetaBlock == 0)
        if vBetaBlock == 1 {
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vNaChannel == 2 {
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=0
                }
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=0
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
            }
            if vNaChannel == 1 || vCaChannel == 1 || vKChannel == 3 || vAlfaBlock == 2 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=1
                }
                if mySelectCa == false {
                    CaChannel.selectedSegmentIndex=1
                }
                if mySelectK == false {
                    KChannel.selectedSegmentIndex=3
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=2
                }
            }
            AsNa0.text = ""
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = "•"
            AsBeta0.text = ""
            AsBeta1.text = "•"
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vBetaBlock == 1)
        if vBetaBlock == 2 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=0
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = ""
            AsBeta1.text = ""
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vBetaBlock == 2) 
        HanteiMethod()
        mySelectBeta = false
    }//@IBAction func myActionBeta:(id)sender
    
    @IBAction func myActionM2() {
        mySelectM2 = true
        myMethod()
        if vM2Block == 0 {
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = "•"
            if vNaChannel == 2 && vKChannel == 2 {
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=0
                }
            }//if vNaChannel == 2 && vKChannel == 2)
        }//if vM2Block == 0)
        if vM2Block == 1 {
            if mySelectK == false {
                KChannel.selectedSegmentIndex=2
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            if vNaChannel == 2 || vAlfaBlock == 1 {
                if mySelectNa == false {
                    NaChannel.selectedSegmentIndex=2
                }
                if mySelectAlfa == false {
                    AlfaBlock.selectedSegmentIndex=1
                }
            }
            AsNa0.text = ""
            AsNa1.text = ""
            AsNa2.text = "•"
            AsNa3.text = ""
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = ""
            AsK1.text = ""
            AsK2.text = "•"
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = ""
            AsM1.text = "•"
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vM2Block == 1)
        if vM2Block == 2 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=0
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = ""
            AsM1.text = ""
            AsM2.text = "•"
            AsM3.text = ""
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vM2Block == 2)
        if vM2Block == 3 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=0
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=1
            }
            AsNa0.text = "•"
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = ""
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = ""
            AsNAK1.text = "•"
        }//if vM2Block == 3)
        HanteiMethod()
        mySelectM2 = false
    }//@IBAction func myActionM2:(id)sender
    
    @IBAction func myActionA1Ag() {
        mySelectA1Ag = true
        myMethod()
        if vA1Ag == 0 {
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = "•"
            AsNAK1.text = "•"
        }//if vA1Ag == 0)
        if vA1Ag == 1 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=0
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=0
            }
            if mySelectNAKATP == false {
                NAKATP.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = "•"
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = ""
            AsA1Ag0.text = ""
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vA1Ag == 1)
        HanteiMethod()
        mySelectA1Ag = false
    }//@IBAction func myActionA1Ag:(id)sender
    
    @IBAction func myActionNAKATP() {
        mySelectNAKATP = true
        myMethod()
        if vNAKATP == 0 {
            AsNa0.text = "•"
            AsNa1.text = "•"
            AsNa2.text = "•"
            AsNa3.text = "•"
            AsNa4.text = "•"
            AsCa0.text = "•"
            AsCa1.text = "•"
            AsCa2.text = "•"
            AsCa3.text = "•"
            AsK0.text = "•"
            AsK1.text = "•"
            AsK2.text = "•"
            AsK3.text = "•"
            AsIf0.text = "•"
            AsIf1.text = "•"
            AsAlfa0.text = "•"
            AsAlfa1.text = "•"
            AsAlfa2.text = "•"
            AsBeta0.text = "•"
            AsBeta1.text = "•"
            AsBeta2.text = "•"
            AsM0.text = "•"
            AsM1.text = "•"
            AsM2.text = "•"
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = "•"
            AsNAK0.text = "•"
            AsNAK1.text = ""
        }//if vNAKATP == 0)
        if vNAKATP == 1 {
            if mySelectNa == false {
                NaChannel.selectedSegmentIndex=0
            }
            if mySelectCa == false {
                CaChannel.selectedSegmentIndex=0
            }
            if mySelectK == false {
                KChannel.selectedSegmentIndex=0
            }
            if mySelectIf == false {
                ChIf.selectedSegmentIndex=0
            }
            if mySelectAlfa == false {
                AlfaBlock.selectedSegmentIndex=0
            }
            if mySelectBeta == false {
                BetaBlock.selectedSegmentIndex=0
            }
            if mySelectM2 == false {
                M2Block.selectedSegmentIndex=3
            }
            if mySelectA1Ag == false {
                A1Ag.selectedSegmentIndex=0
            }
            AsNa0.text = "•"
            AsNa1.text = ""
            AsNa2.text = ""
            AsNa3.text = ""
            AsNa4.text = ""
            AsCa0.text = "•"
            AsCa1.text = ""
            AsCa2.text = ""
            AsCa3.text = ""
            AsK0.text = "•"
            AsK1.text = ""
            AsK2.text = ""
            AsK3.text = ""
            AsIf0.text = "•"
            AsIf1.text = ""
            AsAlfa0.text = "•"
            AsAlfa1.text = ""
            AsAlfa2.text = ""
            AsBeta0.text = "•"
            AsBeta1.text = ""
            AsBeta2.text = ""
            AsM0.text = ""
            AsM1.text = ""
            AsM2.text = ""
            AsM3.text = "•"
            AsA1Ag0.text = "•"
            AsA1Ag1.text = ""
            AsNAK0.text = ""
            AsNAK1.text = "•"
        }//if vNAKATP == 1)
        HanteiMethod()
        mySelectNAKATP = false
    }//@IBAction func myActionNAKATP:(id)sender
    
    @IBAction func myActionReset() {
        NaChannel.selectedSegmentIndex=0
        CaChannel.selectedSegmentIndex=0
        KChannel.selectedSegmentIndex=0
        ChIf.selectedSegmentIndex=0
        AlfaBlock.selectedSegmentIndex=0
        BetaBlock.selectedSegmentIndex=0
        M2Block.selectedSegmentIndex=0
        A1Ag.selectedSegmentIndex=0
        NAKATP.selectedSegmentIndex=0
        AsNa0.text = "•"
        AsNa1.text = "•"
        AsNa2.text = "•"
        AsNa3.text = "•"
        AsNa4.text = "•"
        AsCa0.text = "•"
        AsCa1.text = "•"
        AsCa2.text = "•"
        AsCa3.text = "•"
        AsK0.text = "•"
        AsK1.text = "•"
        AsK2.text = "•"
        AsK3.text = "•"
        AsIf0.text = "•"
        AsIf1.text = "•"
        AsAlfa0.text = "•"
        AsAlfa1.text = "•"
        AsAlfa2.text = "•"
        AsBeta0.text = "•"
        AsBeta1.text = "•"
        AsBeta2.text = "•"
        AsM0.text = "•"
        AsM1.text = "•"
        AsM2.text = "•"
        AsM3.text = "•"
        AsA1Ag0.text = "•"
        AsA1Ag1.text = "•"
        AsNAK0.text = "•"
        AsNAK1.text = "•"
        antiArrhythmiaArray1 = ["","","","","","",""]
        antiArrhythmiaArray2 = ["","","","","","",""]
        antiArrhythmiaFeature()
        successfullyCompleted.text = ""
        mySelectNa = false
        mySelectCa = false
        mySelectK = false
        mySelectIf = false
        mySelectAlfa = false
        mySelectBeta = false
        mySelectM2 = false
        mySelectA1Ag = false
        mySelectNAKATP = false
    }//@IBAction func myActionReset:(id)sender
    
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
