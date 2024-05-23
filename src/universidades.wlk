import profesionales.*

class Universidad {
	const property provincia
	var property honorariosRecomendados
	var property totalRecibido = 0
	
	method recibirDonacion(donacion) {
        totalRecibido += donacion
    }
}

object asociacionLitoral {
	var property totalRecibido = 0
	
	method recibirDonacion(donacion) {
        totalRecibido += donacion
    }
}