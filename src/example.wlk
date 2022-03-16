object pepita {
	var energia = 100
	var cenas = 0
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
		cenas += 1
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
	
	method cenas() {
		return cenas
	}
}
//EJ 1
object pepon {
	var energia = 30
	var cenas = 0
	
	method comer(comida) {
		energia += comida.energiaQueAporta()/2
		cenas += 1
	}
	
	method volar(distancia) {
		energia = energia - 20 - distancia * 2
	}
	
	method energia() {
		return energia
	}
	
	method cenas() {
		return cenas
	}
}

//Comidas

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}	
}

//EJ 2
object roque {
	  
	// Las lineas comentadas dan una solucion en la que la responsabilidad de saber las cenas de las aves es de Roque,
	// pero se pierden las cenas anteriores si cambiamos de ave.
	
	var ave = pepita
	//var cantdeVecesAlimentada = 0   
	
	method ave(){
		return ave
	}
	
	method cambiarAve(nuevaAve) {
		ave = nuevaAve
	//	cantdeVecesAlimentada = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		//cantdeVecesAlimentada = cantdeVecesAlimentada + 1		
	}
	
	method cenas() {
		//return cantdeVecesAlimentada
		return ave.cenas()
	}
}