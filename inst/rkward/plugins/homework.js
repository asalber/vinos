// author: Alfredo Sánchez Alberca (asalber@ceu.es)
var dni;

function preprocess(){
	echo('require(vinos)\n');
	echo('modify.unif <- function(var, min, max, decimals) {var <- var + round(runif(length(var), min, max), decimals)}\n');
	echo('modify.norm <- function(var, mean, sd, decimals) {var <- var + round(rnorm(length(var), mean, sd), decimals)}\n\n');
}

function calculate () {
	dni = getString("dni");
	echo('data(datos.vinos, package="vinos")\n');
	echo('set.seed(' + dni + 0 + ')\n');
	echo('modify.unif(datos.vinos$acidez.fija, -0.1, 0.1, 1)\n');
	echo('modify.unif(datos.vinos$acidez.volatil, -0.02, 0.02, 2)\n');
	echo('modify.unif(datos.vinos$acido.citrico, -0.02, 0.02, 2)\n');
	echo('modify.unif(datos.vinos$azucar.residual, -0.2, 0.2, 1)\n');
	echo('modify.unif(datos.vinos$acidez.volatil, -0.02, 0.02, 2)\n');
	echo('modify.unif(datos.vinos$cloruro.sodico, -0.002, 0.002, 3)\n');
	echo('modify.unif(datos.vinos$acidez.volatil, -0.02, 0.02, 2)\n');
	echo('modify.unif(datos.vinos$dioxido.azufre.libre, -2, 2, 0)\n');
	echo('modify.unif(datos.vinos$dioxido.azufre.total, -5, 5, 0)\n');
	echo('modify.unif(datos.vinos$densidad, -0.0002, 0.0002, 4)\n');
	echo('modify.unif(datos.vinos$ph, -0.01, 0.01, 2)\n');
	echo('modify.unif(datos.vinos$sulfatos, -0.01, 0.01, 2)\n');
	echo('modify.unif(datos.vinos$alcohol, -0.1, 0.1, 1)\n');
	echo('modify.unif(datos.vinos$dioxido.azufre.libre, -2, 2, 0)\n');
	echo('.GlobalEnv$datos.vinos.' + dni + '<- datos.vinos\n');
	echo('rm(datos.vinos,envir=.GlobalEnv)\n');
}

function printout () {
	echo('rk.header ("Datos del trabajo de estad&iacute;stica", parameters=list("Nombre del conjunto de datos" = "datos.vinos.' + dni + '"))\n');
	echo('rk.print("Se ha generado un nuevo conjunto de datos en el espacio de trabajo.")\n');
}

