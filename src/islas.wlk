class Isla {
	var property mapa = []
	
	method agregarAve(ave) {
		mapa.add(ave)
	}
	method quitarAve(ave) {
		mapa.remove(ave)
	}
	method avesDebiles() {
		return mapa.filter({ave => ave.fuerza() < 1000})
	} 
	method fuerzaTotal() {
		return mapa.sum({ave => ave.fuerza()})
	}
	method esRobusta() {
		return mapa.all({ave => ave.fuerza() > 300})
	}
	method huboTerremoto() {
		mapa.forEach({ave => ave.recibeUnDisgusto()})
	}
	method huboTormenta() {
		var avesDebiles = self.avesDebiles()
		avesDebiles.forEach({ave => ave.recibeUnDisgusto()})
	}
	
}
