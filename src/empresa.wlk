import sucursales.*

object empresa{
	var property cantidadXpedido
	var property tipoDeRemera
	var pedidos = []

	method agregarPedido(pedido) = pedidos.add(pedido)	
	
	method costoXpedido(){
		return tipoDeRemera.costoDePedido(self)
	}		
}


