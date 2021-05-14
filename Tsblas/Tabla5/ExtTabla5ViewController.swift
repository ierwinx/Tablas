import UIKit

extension Tabla5ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Celda2TableViewCell", for: indexPath)
        
        (celda as? Celda2TableViewCell)?.setDatos(informacion: lista[indexPath.row])
        
        return celda
    }
    
}
