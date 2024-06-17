//
//  ColorTableVC.swift
//  RandomColor
//
//  Created by Fen on 17/06/2024.
//

import UIKit

class ColorTableVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension ColorTableVC :UITableViewDelegate,UITableViewDataSource {
//    indique combien de ligne aura la view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
//    indique l'action à effectuer sur chaque ligne
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
