//
//  FirstAidViewController.swift
//  CM Project 2020
//
//  Created by Jia Yu Lee on 13/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

var aidName = "first aid"
var aidDescription = "description"
var aidItemsNeeded = "items needed"
var aidSymptoms = "symptoms"
var aidnonos = "please do not do it!"
var cases = "Cases"

class FirstAidViewController: UIViewController {

    @IBOutlet weak var sideBarView: UIView!
    @IBOutlet weak var sideMenuButton: UIButton!
    
    var mysideMenu = true
    
    
    @IBAction func sideMenu(_ sender: Any) {
        if (mysideMenu) {
            leadingConst.constant = 0
            
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
                self.sideMenuButton.isHidden = true
            })
        }
        mysideMenu = !mysideMenu
    }
    @IBAction func sideMenuBackAreYouSafe(_ sender: Any) {
            if mysideMenu == false{
                leadingConst.constant = 417
                
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                    self.sideMenuButton.isHidden = false
                })
            }
            mysideMenu = !mysideMenu
        }
    
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    
    
    @IBAction func lacerations(_ sender: Any) {
        aidName = "lacerations"
        aidDescription = "In general, wash off debris with clean water and if possible with soap but try not to let the soap go into the wound. If there are object stuck in the wound try to pull it out with tweezers. Always remember to take a tetunus shot if you haven't done so in 5 years"
        aidItemsNeeded = "clean clothes, clean water, shoe lace, tweezers and a phone to call the ambulance"
        aidSymptoms = "bleeding from skin, missing epidermis and deep cuts"
        aidnonos = "Using antibacterial soap to clean the wound (Might mess around with the blood clotting)"
        cases  = "Deep Cut:\n\nWhat you can do:\n hold the cut above your heart and take a clean cloth to apply direct pressure, if the cloth is soaked in blood, Do Not remove the cloth but instead cover it with a new piece of cloth. After the bleeding stops, tie the cloth tight enough to hold the cloth but not so tight till it stops the blood flow.\nItems Needed:\n clean clothes, clean water, shoe lace\nSymptoms:\n bleeding profusely, incredible pain from site of injury\nThings you should not do:\n Leaving the open wound to air dry\n\nMedium cuts:\n\nWhat you can do:\nApply pressure to the wound with a cloth or gauze pad to stop bleeding, wash off debris with clean water and if possible with soap but try not to let the soap go into the wound. After that apply anti septic cream or solution, apply a bandage over the wound. If the wound is too deep, use a butterfly bandage instead.\nItems Needed:\nAnti septic solution/ cream  bandages\nSymptoms:\n bleeding, pain from site\n\nMinor cuts(barely bleeding)\n\nWhat you can do:\nApply pressure to the wound with a cloth or gauze pad to stop bleeding, wash off debris with clean water and if possible with soap but try not to let the soap go into the wound. After that apply anti septic cream or solution, apply a bandage over the wound.\nItems Needed:\nAnti septic solution/ cream  bandages\nSymptoms:\n trinkling of blooding, a bit of pain from site\n\nScrapes:\n\nWhat you can do:\n apply pressure to the wound with a cloth or gauze pad to stop bleeding,  wash wound with soap if possible or with just clean water. after that apply anti-septic cream or solution and a bandage over the wound.\nItems Needed:\nanti septic solution/ cream  bandages\nSymptoms:\nMinor numerous cuts,flow of plasma/blood"
    }
    
    @IBAction func burns(_ sender: Any) {
        aidName = "Burns"
        aidDescription = "Wash the area burned with warm to cold water. Do not touch the affected part and You can use aloe-vera  and dry cotton dressing to clean and cover the burn"
        aidItemsNeeded = "Water"
        aidSymptoms = "blistering and pain from site, and injuried site feeling hot"
        aidnonos = "Using oil based creams and ice cold water to apply to affect part"
        cases = "Nothing"
    }
    
    @IBAction func fractures(_ sender: Any) {
        aidName = "Fractures"
        aidDescription = "In general if their bleeding  apply pressure to the wound using a sterile bandage, a clean cloth, or a clean piece of clothing and keep the part still "
        aidItemsNeeded = "Cloth, Water"
        aidSymptoms = "Intense pain in the injured area that gets worse when you move it, Numbness in the injured area, Bluish color, swelling, or visible deformity in the injured area, Bone protruding through the skin, Heavy bleeding at the injury site"
        aidnonos = "Trying to fix/realign the bone, Pushing the bone back into place "
        cases = "Hands\n\nWhat you can do:\nHold the injuried part still.\n\nWrist\n\nWhat you can do:\nHold the injuried part still. After that put a cloth underneath the handmade splint and tie the ends of it around the back of your neck when moving around\n\nLeg\n\nWhat you can do:\nKeep the injuried part still"
        
    }
    
    @IBAction func hotweather(_ sender: Any) {
        aidName = "Hot Weather"
        aidDescription = "When the weather is hot and the temperature is high, it is very possible to get Hyperthermia or Heat Strokes"
        aidItemsNeeded = "Water and Rest"
        aidSymptoms = "Temperature is higher than normal and the feeling of dizzyness"
        aidnonos = "Continue staying outdoors if you are feeling sick"
        cases = "Hyperthermia\n\nWhat you can do:\nDrink 2 to 3 quarts of water daily.Avoid exertion or exercise, especially during the hottest part of the day.When outside, wear a hat and loose clothing; when indoors, remove as much clothing as needed to be comfortable.\nWhat you should not do:\nHot, Heavy meals, Alcohol.\n\nHeat Strokes\nWhat you can do:\nChoose lightweight, light-coloured, loose-fitting clothing, Use Sunblock, Drink plenty of water, Stay indoors\nWhat you should not do:\nHot, Heavy meals, Alcohol."
        
        
    }
    @IBAction func coldweather(_ sender: Any) {
        aidName = "Cold Weather"
        aidDescription = "When you stay in a cold weather for a long time, it increases the chance of you getting frostbyte, etc... "
        aidItemsNeeded = "Multiple Layers of cloathing"
        aidSymptoms = "bleeding from skin, missing epidermis and deep cuts"
        aidnonos = "Not wearing adequate cloathing"
        cases = "Hypothermia\n\nWhat you can do:\nWear multiple layers of clothes\nSympyoms:\nEarly signs include Feeling cold, Shivering, Stumbling and mumbling( These are signs that cold is affecting your body and brain.)\n\nFrostbite\nWhat you can do:\n, For milder cases of frostbite, take over-the-counter ibuprofen (Advil, Motrin IB, others) to reduce pain and inflammation, For superficial frostbite that has been rewarmed, some people find it soothing to apply aloe vera gel or lotion to the affected area several times a day, Avoid further exposure to cold and wind, Remove rings or other tight items. Try to do this before the affected area swells.\nSymptoms\nEarly signs, Red and cold skin; skin may start to turn white but is still soft, Prickling and numbness, Memory loss, Slurred speech, Drowsiness, Tingling, Stinging\nThings you should not do:\n-Walking on frostbitten feet, Applying direct heat or rub the area, Breaking blisters that may develop. Blisters act like a bandage. Allow blisters to break on their own."
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideBarView.layer.cornerRadius = 15
        sideBarView.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
