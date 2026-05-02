import vahiculos.*


object roberto {


  var vehiculo = bicicleta 
  var property peso = 90  // asumo que puede cambiar el peso

    method pesoTotal() {
      return peso + vehiculo.peso()
    }
    method cambiarVehiculo(unVehiculo) {
      vehiculo = unVehiculo
    }
    method puedeLlamar() = false 

}

object chuckNorris {

    method pesoTotal() = 80
    method puedeLlamar() = true  
    
}

object neo {
  
  var tieneCredito = false
  method pesoTotal() = 0
  method puedeLlamar() = tieneCredito
  method cargarCredito() {tieneCredito=true} 
  method consumirCredito() {tieneCredito=false} 
}