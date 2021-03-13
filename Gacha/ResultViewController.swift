//
//  ResultViewController.swift
//  Gacha
//
//  Created by 小西星七 on 2021/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number:Int!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    

//    教科書通りの表記は下記の通り
//    @IBOutlet var backgroundImageView: UIImageView!
//    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...23)
        appearInformation()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func getImageByUrl(url: String) -> UIImage{
        let url = URL(string: url)
        do {
            let data = try Data(contentsOf: url!)
            return UIImage(data: data)!
        } catch let err {
            print("Error : \(err.localizedDescription)")
        }
        return UIImage()
    }
    
    @IBAction func shuffle(){
        
        number = Int.random(in: 0...23)
        appearInformation()
        
    }
    
    func appearInformation(){
        
        if number == 0{
            
            nameLabel.text = "新内眞衣"
            imageView.image = UIImage(named: "shinuchimai_list")

        }else if number == 1{
            
            nameLabel.text = "白石麻衣"
            imageView.image = UIImage(named: "shiraishimai_list_ZgemwAL")
            
        }else if number == 2{
            
            nameLabel.text = "松村沙友里"
            imageView.image = UIImage(named: "matsumurasayuri_list")
            
        }else if number == 3{
            
            nameLabel.text = "秋元真夏"
            imageView.image = UIImage(named: "akimotomanatsu_list")
            
        }else if number == 4{
            
            nameLabel.text = "高山一実"
            imageView.image = UIImage(named: "takayamakazumi_list")
            
        }else if number == 5{
            
            nameLabel.text = "中田加奈"
            imageView.image = UIImage(named: "nakadakana_list")
            
        }else if number == 6{
            
            nameLabel.text = "井上小百合"
            imageView.image = UIImage(named: "inouesayuri_list")
            
        }else if number == 7{
            
            nameLabel.text = "吉田綾乃クリスティー"
            imageView.image = UIImage(named: "yoshidaayanochristie_list")
            
        }else if number == 8{
            
            nameLabel.text = "北野日奈子"
            imageView.image = UIImage(named: "kitanohinako_list")
            
        }else if number == 9{
            
            nameLabel.text = "堀未央奈"
            imageView.image = UIImage(named: "horimiona_list")
            
        }else if number == 10{
            
            nameLabel.text = "生田絵梨花"
            imageView.image = UIImage(named: "ikutaerika_list")
            
        }else if number == 11{
            
            nameLabel.text = "山崎怜奈"
            imageView.image = UIImage(named: "yamazakirena_list")
            
        }else if number == 12{
            
            nameLabel.text = "樋口日奈"
            imageView.image = UIImage(named: "higuchihina_list")
            
        }else if number == 13{
            
            nameLabel.text = "星野みなみ"
            imageView.image = UIImage(named: "hoshinominami_list")
            
        }else if number == 14{
            
            nameLabel.text = "佐藤楓"
            imageView.image = UIImage(named: "satoukaede_list")
            
        }else if number == 15{
            nameLabel.text = "和田まあや"
            imageView.image = UIImage(named: "wadamaaya_list")
            
        }else if number == 16{
            nameLabel.text = "齋藤飛鳥"
            imageView.image = UIImage(named: "saitouasuka_list")
            
        }else if number == 17{
            nameLabel.text = "佐々木琴子"
            imageView.image = UIImage(named: "sasakikotoko_list")
            
        }else if number == 18{
            nameLabel.text = "寺田蘭世"
            imageView.image = UIImage(named: "teradaranze_list")
            
        }else if number == 19{
            nameLabel.text = "伊藤純奈"
            imageView.image = UIImage(named: "itoujunna_list")
            
        }else if number == 20{
            nameLabel.text = "大園桃子"
            imageView.image = UIImage(named: "oozonomomoko_list")
            
        }else if number == 21{
            nameLabel.text = "山下美月"
            imageView.image = UIImage(named: "yamashitamizuki_list")
            
        }else if number == 22{
            nameLabel.text = "西野七瀬"
            imageView.image = UIImage(named: "nisinonanase")
            
        }else if number == 23{
            nameLabel.text = "生駒里奈"
            imageView.image = UIImage(named: "ikomarina")
            
        }
        
        
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
