class Armas {
	
	method esHeavy() {
		return ( self.potenciaDestructiva() >= 200 ) || ( self.puntosDeHonor() >= 10 )
	}
	
	method puntosDeHonor()
	
	method potenciaDestructiva()
}

class Cuchillo inherits Armas {
	var puntosDeHonor
	
	method puntosDeHonor(_puntosDeHonor) {
		puntosDeHonor = _puntosDeHonor
	}
	
	override method puntosDeHonor() {
		return puntosDeHonor
	}
	
	override method potenciaDestructiva() {
		return 1
	}	
}

class Ametralladora inherits Armas {
	var potenciaDestructiva
	
	override method puntosDeHonor() {
		return ametralladoraHonor.puntosDeHonor()
	}
	
	method potenciaDestructiva(_potenciaDestructiva) {
		potenciaDestructiva = _potenciaDestructiva
	}
	
	override method potenciaDestructiva() {
		return potenciaDestructiva
	}
}

class Bombas inherits Armas {
	override method puntosDeHonor() {
		return 0
	}
	
	override method potenciaDestructiva() {
		return 1000
	}
}

object ametralladoraHonor {
	var puntosDeHonor
	
	method puntosDeHonor(_puntosDeHonor) {
		puntosDeHonor = _puntosDeHonor
	}
	
	method puntosDeHonor() {
		return puntosDeHonor
	}
}