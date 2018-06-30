//
//  HomeViewController.swift
//  unlockMe
//
//  Created by Jonah Alle Monne on 18/11/2017.
//  Copyright © 2017 Jonah Alle Monne. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func classicMode(_ sender: Any) {
        Modes.name = .classic
    }
    
    @IBAction func chronoMode(_ sender: Any) {
        Modes.name = .chrono
    }
    @IBOutlet weak var highscore: UILabel!
    let persister = HighscorePersister()
    @IBOutlet weak var levelMaxLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        highscore.text = "Highscore: " + String(format:"%.1f" , persister.highscore) + "s"
        levelMaxLabel.text = "Best Level: " + String(persister.levelMax)
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
