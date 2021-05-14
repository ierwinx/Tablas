import UIKit

class CeldaPersoTableViewCell: UITableViewCell {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var texto1: UILabel!
    @IBOutlet weak var texto2: UILabel!
    
    func setInformacion(informacion: Informacion) {
        self.imagen.image = informacion.imagen
        self.texto1.text = informacion.titulo
        self.texto2.text = informacion.descripcion
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imagen.layer.cornerRadius = self.imagen.bounds.width / 2.0
    }

}
