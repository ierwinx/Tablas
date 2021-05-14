import UIKit

class Tabla4ViewController: UIViewController {

    @IBOutlet weak var tabla: UITableView!
    
    var lista: Array<Informacion> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.delegate = self
        tabla.dataSource = self
        
        for i in 1..<10 {
            lista.append(Informacion(imagen: UIImage(named: "Prueba") ?? UIImage(), titulo: "Estas en video \(i)", descripcion: "Contenido \(i)"))
        }
        
    }

}
