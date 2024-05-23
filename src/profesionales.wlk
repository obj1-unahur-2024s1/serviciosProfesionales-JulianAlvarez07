import universidades.*

class ProfesionalAsociado {
	const property universidad
	var property importeDinero
	
	method honorarios() = universidad.honorariosRecomendados()
	method provincias() = #{universidad.provincia()} 			
	
	method donaAlaAsociacion(unaAsociacion){
		const donacion = importeDinero
		unaAsociacion.recibirDonacion(donacion)
		return donacion
	}
}


class ProfesionalVinculado {
	const property universidad
	var property honorarios = 3000
	var property importeDinero
	method provincias() =
		#{"Entre Rios", "Santa Fe", "Corrientes"}
	
	method donaAlaUniversidad(unaUniversidad){
		const donacion = importeDinero / 2
		unaUniversidad.recibirDonacion(donacion)
		return donacion
	}
}


class ProfesionalLibre {
	const property universidad
	const property provincias = #{}				// se crea un conjuntos vacio
	var property honorarios
	
	var property totalRecaudado 
	
	method agregarProvincia(unaProvincia) {
		provincias.add(unaProvincia)
	}
	method quitarPronvincia(unaProvincia) {
		provincias.remove(unaProvincia)
	}
	
	method pasarDinero(profesionalLibre, dinero){
		totalRecaudado -= dinero
		profesionalLibre.recibirDinero(dinero)
	}
	
	method recibirDinero(dinero){
		totalRecaudado += dinero
	}
	
}