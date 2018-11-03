import empresa.*

class RemeraLisa{
	var property talle = null
	var property cantidad = null
	var property color = basico
	

	
	method costo (){
		if((talle).between(32,40))
		return cantidad * 80 * color.costo()
		else 
		return cantidad *100 * color.costo()
	}
	
	method costoDePedido(cantidadXpedido){
		return self.costo() * empresa.cantidadXpedido()
		
	}
}


class Bordada inherits RemeraLisa{
	
	var property cantidadColores = null
	
		method agregado(){
		 return cantidadColores *10   // $10 por cada color en el bordado
	}
	
	method newCosto(){
		 return self.costoDePedido() + self.agregado()
	}	
}
class Sublimada inherits RemeraLisa{
	
	var property altoCm = null
	var property anchoCm = null
	var property copyright 
	var sucursal
	
	method calculoDeSuperficie(){
		return altoCm*anchoCm * 0.5
		}
	
	method newCosto(){
		return self.costo() + self.calculoDeSuperficie() + copyright.derechoDeAutor()
	}
	
	}
	
class Copyright{
	var property derechoDeAutor  // $
}
	
object basico{
		var property costo = 1
	}
object distinguido{
		var property costo = 1.10
	}
