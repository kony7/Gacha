//
//  ResultViewController.swift
//  Gacha
//
//  Created by 小西星七 on 2021/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number:Int!
    
    @IBOutlet var groupImageView: UIImageView!
    @IBOutlet var personImageView: UIImageView!
    @IBOutlet var nameImageView: UIImageView!

//    教科書通りの表記は下記の通り
//    @IBOutlet var backgroundImageView: UIImageView!
//    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...4)
        
        if number == 0{
            groupImageView.image = UIImage(named: "7MENSamurai")
            personImageView.image = UIImage(named: "7Konno")
            nameImageView.image = UIImage(named: "7KonnoName")
            
        }else if number == 1{
            groupImageView.image = UIImage(named: "7MENSamurai")
            personImageView.image = UIImage(named: "7Yabana")
            nameImageView.image = UIImage(named: "7YabanaName")
        }else if number == 2{
            groupImageView.image = UIImage(named: "Bishounen")
            personImageView.image = UIImage(named: "BiSato")
            nameImageView.image = UIImage(named: "BiSatoName")
            
        }else if number == 3{
            groupImageView.image = UIImage(named: "HiHiJets")
            personImageView.image = UIImage(named: "HiInoue")
            nameImageView.image = UIImage(named: "HiInoueName")
            
        }else if number == 4{
            groupImageView.image = UIImage(named: "TravisJapan")
            personImageView.image = UIImage(named: "TJKawashima")
            nameImageView.image = UIImage(named: "TJKawashimaName")
            
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
