import Foundation
import UIKit

struct Informacion {

    var imagen: UIImage
    var titulo: String
    var descripcion: String

    init(imagen:UIImage, titulo:String, descripcion:String) {
        self.imagen = imagen
        self.titulo = titulo
        self.descripcion = descripcion
    }
    
}
