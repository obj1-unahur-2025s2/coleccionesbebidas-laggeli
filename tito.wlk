import bebidas.*
object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method bebida() = bebida
    method consumir(unaCantidad, unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method velocidad() = bebida.rendimiento(cantidad) * self.inerciaBase() / self.peso()
}