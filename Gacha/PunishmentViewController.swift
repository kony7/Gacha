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
        
        punishmentArray = ["苦い飲み物を飲め","顔に落書き！","オリジナル一発芸","全力でブルゾンちえみ","カエルのものまね","酸っぱい飲み物を飲め","ビンタ","あだ名、改名！","リップを分厚く塗れ","バンジージャンプ","1週間階段2段飛び"]
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
