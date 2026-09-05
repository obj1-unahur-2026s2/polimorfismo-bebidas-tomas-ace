object tito {
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10
  method consumir(cantidad,bebida) {
    bebidaConsumida=bebida
    dosis=cantidad
  }
  method velocidad() = bebidaConsumida.rendimientoQueOtorga(dosis,self)*490/peso 
  method peso() = peso 
  method cambiarPeso(nuevoPeso) {peso=nuevoPeso}
  method esFeliz() = self.velocidad()>=7 
}

object pepe {
  var peso = 80
  var bebidaConsumida = whisky
  var dosis = 10
  var edad = 30
  method cumplirAños() {edad+=1}
  method consumir(cantidad,bebida) {
    bebidaConsumida=bebida
    dosis=cantidad
  }
  method velocidad() = bebidaConsumida.rendimientoQueOtorga(dosis,self)*490/peso - (if (edad>30) 10 else 0)
  method peso() = peso 
  method cambiarPeso(nuevoPeso) {peso=nuevoPeso}
 
}

object whisky {
  method rendimientoQueOtorga(dosisConsumida,deportista) = 0.9**dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida,deportista) = (0.1 * dosisConsumida).max(1)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida,deportista) = if(deportista.peso()>70) deportista.peso()*0.1 + dosisConsumida else 0
}