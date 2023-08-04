//
//  ViewController.swift
//  Animasyonlu FAB
//
//  Created by Yaşar Duman on 4.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fabMain: UIButton!
    @IBOutlet weak var fabikinci: UIButton!
    @IBOutlet weak var fabBirinci: UIButton!
    
    var fabDurum = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Buttonların oval yapılması
        fabMain.layer.cornerRadius = fabMain.frame.size.width/2
        fabBirinci.layer.cornerRadius = fabBirinci.frame.size.width/2
        fabikinci.layer.cornerRadius = fabikinci.frame.size.width/2
        
        self.fabBirinci.alpha = 0
        self.fabikinci.alpha = 0
        self.fabBirinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.fabikinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }

    @IBAction func fabMainTikla(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            if self.fabDurum{
                self.fabBirinci.alpha = 0
                self.fabikinci.alpha = 0
                
                self.fabMain.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                
                self.fabBirinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.fabikinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                
                self.fabDurum = false
            }else{
                self.fabBirinci.alpha = 1
                self.fabikinci.alpha = 1
                
                self.fabMain.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
                
                self.fabBirinci.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.fabikinci.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                
                
                self.fabDurum = true
            }
            
        },completion: nil)
    }
    
    @IBAction func fabBirinciTikla(_ sender: Any) {
    }
    @IBAction func fabikinciYikla(_ sender: Any) {
    }
}

