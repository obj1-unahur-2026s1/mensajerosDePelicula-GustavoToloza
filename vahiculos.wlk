object bicicleta {
  method peso() = 5
  
}

object camion {
    var property acoplados = 1

    method peso() {
      return acoplados * 500
    }
}