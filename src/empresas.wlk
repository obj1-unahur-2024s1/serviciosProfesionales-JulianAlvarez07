import profesionales.*
import universidades.*

class Empresa {
	var property profesionales = []
	
	var property honorariosRef
	
	method agregarProfesional(unProfesional){
		profesionales.add(unProfesional)
	}
	
	method quitarProfesional(unProfesional){
		profesionales.remove(unProfesional)
	}
	
	method cuantosEstudiaron(universidad){
		return profesionales.count(
			{p => p.universidad() == universidad}
		)
	}
	
	method profesionalesCaros() {
		return profesionales.filter(
			{p => p.honorarios() >= honorariosRef}
		).asSet()  // transforma una lista en un conjunto porque pide el ejercicio devolver conjunto
	}
	
	method formadoras() {
		return profesionales.map(			//A una lista si le pasas el map, devuelve una lista
			{p => p.universidad()}
		).asSet()							// transforma una lista en un conjunto
	}
	
	method profesionalMasBarato() {
		return profesionales.min(			//devuelve el profesional
			{p => p.honorarios()}
		)									//.honorarios() para que devuelva el valor
	}
	
	method esDeGenteAcotadaAll() {
		return profesionales.all(
			{p=>p.provincias().size() <= 3}
		)
	}
	
	method esDeGenteAcotadaAny() {
		return not profesionales.any(
			{p=>p.provincias().size() > 3}	//.size() para saber el numero de provincias del conjunto
		)	
	}
}