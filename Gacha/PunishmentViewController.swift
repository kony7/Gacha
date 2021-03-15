//
//  PunishmentViewController.swift
//  Gacha
//
//  Created by 小西星七 on 2021/03/13.
//

import UIKit

class PunishmentViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    var punishmentArray: [String] = []
    
    //TableViewの宣言
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        punishmentArray = ["乃木坂公式ページ","最新シングルMV","のぎ動画","Twitter公式","YouTube公式","ブログ"]
        table.delegate = self
        table.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return punishmentArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        //"Cell"というIDのセルを取得
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")

        cell?.textLabel?.text = punishmentArray[indexPath.row]
        print(indexPath.row)
        
        //このreturnの意味は？→関数自体が「どんなセル？」と聞いているのに対して、こんなセル！と返す意味のreturn
        return cell!
           
       }
    
    //セルをタップした時の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        //タップした時の選択色を消す
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)

        // 何番目のセルか？で分岐
        switch indexPath.row {
        case 0 :
            let url = URL(string: "http://blog.nogizaka46.com/")
            UIApplication.shared.open(url!)
        case 1 :
            let url = URL(string: "https://youtu.be/F_WgREJgJhw")
            UIApplication.shared.open(url!)
        case 2:
            let url = URL(string: "https://nogidoga.com/")
            UIApplication.shared.open(url!)
        case 3 :
            let url = URL(string: "https://twitter.com/nogizaka46")
            UIApplication.shared.open(url!)
        case 4 :
            let url = URL(string: "https://www.youtube.com/channel/UCUzpZpX2wRYOk3J8QTFGxDg")
            UIApplication.shared.open(url!)
        case 5 :
            let url = URL(string: "http://blog.nogizaka46.com/")
            UIApplication.shared.open(url!)
        default:
            break
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
