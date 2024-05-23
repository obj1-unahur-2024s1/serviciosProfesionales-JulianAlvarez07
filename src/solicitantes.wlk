import profesionales.*
import universidades.*
import empresas.*

class SolicitantePersona {
	var property provincia
	
	method puedeSerAtendidoPor(unProfesional){
		return unProfesional.provincias().contains(provincia)
	}
}

class SolicitanteInstitucion {
	const property universidadReconocida = []
	
	method agregarUniversidadReconocida(unaUniversidad){
		universidadReconocida.add(unaUniversidad)
	}
	
	method quitarUniversidadReconocida(unaUniversidad){
		universidadReconocida.remove(unaUniversidad)
	}
	method puedeSerAtendidoPor(unProfesional){
		return universidadReconocida.contains(unProfesional.universidad())  // universidad es un atributo de profesionales
	}
}

class SolicitanteClubes {
	const property provinciasDondeEsta = #{}		// es un conjunto porque en los profesionales esta definido las provincias por conjuntos
	
	method agregarProvinciaDondeEsta(unaProvincia){
		provinciasDondeEsta.add(unaProvincia)
	}
	
	method quitarProvinciaDondeEsta(unaProvincia){
		provinciasDondeEsta.remove(unaProvincia)
	}
	
	method puedeSerAtendidoPor(unProfesional){
		return provinciasDondeEsta.any(
			{provincia => unProfesional.provincias().contains(provincia)}
		)
	}
}







