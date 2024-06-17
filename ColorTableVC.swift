//
//  ColorTableVC.swift
//  RandomColor
//
//  Created by Fen on 17/06/2024.
//

import UIKit

class ColorTableVC: UIViewController {
    var colors : [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segue {
        static let toDetail = "ToColorDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()

    }
//    fonction pour créer un Array de 50 couleurs
    func addRandomColors() {
        for _ in 0...50 {
            colors.append (.random())
        }
    }

//    fonction pour cast le sender vers la view de destination
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorTableVC :UITableViewDelegate,UITableViewDataSource {
//    indique combien de ligne aura la view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
//    indique l'action à effectuer sur chaque ligne
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
//    fonction qui permet de d'interagir avec le segue (le lien) entre 2 views, ici sender envoie la couleur associé à la ligne
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segue.toDetail, sender: color)
    }
}
