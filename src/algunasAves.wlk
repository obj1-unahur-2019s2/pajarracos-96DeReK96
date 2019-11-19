

class Aguilucho {
	var velocidad = 20
	method fuerza() {
		return if(velocidad <= 60) {
			180
		} else {
			velocidad * 3
		}
	}
	method recibeUnDisgusto() {
		velocidad = velocidad * 2
	}
}

class Albatro {
	var baseDePeso = 4000
	var masaMuscular = 600
	method fuerza() {
		return if(baseDePeso < 6000) {
			masaMuscular
		} else {
			masaMuscular / 2
		}
	}
	method recibeUnDisgusto() {
		baseDePeso = baseDePeso + 800
	}
	method irAlGimnasio() {
		masaMuscular = masaMuscular + 500
		baseDePeso = baseDePeso + 500
	}
}
class Paloma {
	var ira = 200
	method fuerza() {
		return ira * 2
	}
	method recibeUnDisgusto() {
		ira = ira + 300
	}
}

// Aves especiales

class AguiluchoColorado inherits Aguilucho {
	override method fuerza() {
		return 400 + super()
	} 
}

class PalomaTorcaza inherits Paloma {
	var huevos = 3
	override method fuerza() {
		return super() + (100 * huevos)
	}
	override method recibeUnDisgusto() {
		super()
		huevos = huevos + 1
	}
}

