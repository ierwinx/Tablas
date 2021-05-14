import UIKit

class Tabla3ViewController: UIViewController {
    
    @IBOutlet weak var tabla: UITableView!
    private let diasSemana: Array = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabla.delegate = self
        tabla.dataSource = self
    }
    
}

extension Tabla3ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionaste \(diasSemana[indexPath.row])")
    }
    
}

extension Tabla3ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diasSemana.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "celdaID")
        let dia = diasSemana[indexPath.row]
        cell?.textLabel?.text = dia
        return cell!
    }
    
}
