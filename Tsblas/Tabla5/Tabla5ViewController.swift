import UIKit

class Tabla5ViewController: UIViewController {

    @IBOutlet weak var tablaView: UITableView!
    
    var lista: Array<Informacion> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaView.delegate = self
        tablaView.dataSource = self
                                        //nombre del archivo xib                                       // nombre de la celda
        tablaView.register(UINib(nibName: "Celda2TableViewCell", bundle: nil), forCellReuseIdentifier: "Celda2TableViewCell")
        
        for i in 1..<10 {
            lista.append(Informacion(imagen: UIImage(named: "Prueba") ?? UIImage(), titulo: "Estas en video \(i)", descripcion: "Contenido \(i)"))
        }
    }

}
