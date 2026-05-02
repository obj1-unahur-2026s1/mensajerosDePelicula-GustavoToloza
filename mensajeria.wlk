import mensajeros.*
import paquetes.*



object empresa {
  
  const mensajeros = [] 

  method mensajeros() = mensajeros

  method contratarUnMensajero(unMensajero) { // 1
    mensajeros.add(unMensajero)
  }
  method despedirUnMensajero(unMensajero) { // 2 
    mensajeros.remove(unMensajero)
  }
  method despedirATodos() { // 3
    mensajeros.clear()
  }
  method agregarListaDeMensajeros(listaDeMensajeros) { //ejemplo de uso del addAll para una lista
    mensajeros.addAll(listaDeMensajeros)
  }
  method eliminarListaDeMensajeros(listaDeMensajeros) { //ejemplo de uso removeAll para una lista   
    mensajeros.removeAll(listaDeMensajeros)
  }
  method esGrande() { // 4
    return mensajeros.size() > 2
  }
  method puedeSerEntregadoPorElPrimerMensajero(unPaquete) { // 5
    return unPaquete.puedeSerEntregado(self.primerEmpleado()) // el que sabe si puede ser entregado es el paquete, por dominio del ejercicio al paquete se le pasa un mensajero en este caso tiene que ser el primero de la lista
  }

  method primerEmpleado() = mensajeros.first() // complemento del 5, para usar self

  method pesoDelUltimoMensajero() { // 6
    return self.ultimoEmpleado().pesoTotal()
  }

  method ultimoEmpleado() = mensajeros.last() // complemento del 6

}