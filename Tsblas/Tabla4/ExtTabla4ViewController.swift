import Foundation
import UIKit

extension Tabla4ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionaste \(self.lista[indexPath.row])")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaX") as? CeldaPersoTableViewCell
        
        let info: Informacion = self.lista[indexPath.row]
        cell?.setInformacion(informacion: info)
        
        return cell!
    }
    
}
