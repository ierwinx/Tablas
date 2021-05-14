import UIKit

class Celda2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var textoLabel: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var texto2Label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setDatos(informacion: Informacion) -> Void {
        textoLabel.text = informacion.titulo
        imagen.image = informacion.imagen
        texto2Label.text = informacion.descripcion
    }
    
}
