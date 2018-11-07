import armas.*

class Integrante {
	var honorBasico
	
	method honorBasico(_honorBasico) {
		honorBasico = _honorBasico
	}
	
	method honorBasico() {
		return honorBasico
	}
}

class Criminal inherits Integrante {
	var armas = #{}
	
	method agregarArmas(_armas) {
		armas.add(_armas)
	}
	
	method armas() {
		return armas
	}
	
	method honor() {
		return armas.sum({a => a.puntosDeHonor()}) + self.honorBasico()
	}
}

class Respetable inherits Integrante {
	var tituloUniversitario
	
	method tituloUniversitario(_titulos) {
		tituloUniversitario = _titulos
	}
	
	method tituloUniversitario() {
		return tituloUniversitario
	}
	
	method honor() {
		return self.honorBasico() + (10 * self.tituloUniversitario())
	}
}