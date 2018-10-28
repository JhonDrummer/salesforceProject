var arreglo = [];
var persona = {
	nombre: "Jhon Alexander",
        apellido: "Chaparro Espinosa",
        edad: 24
};
document.getElementById("miParrafo").innerHTML = persona.nombre + " " + persona.apellido;

persona = undefined;
document.getElementById("miParrafo2").innerHTML = persona + "<br>" + typeof persona;

persona = null;
document.getElementById("miParrafo2").innerHTML = persona + "<br>" + typeof persona;

function agregarNumeros(){
	var numero = document.getElementById("numero").value;
	document.getElementById("listaNumeros").innerHTML += "<li>"+numero+"</li>";
        arreglo.push(numero);
        document.getElementById("numero").value = "";
}

function limpiar(){
	arreglo = [];
	document.getElementById("listaNumeros").innerHTML = "";
}

function getOperacion(){
	var operacion = document.getElementById("operacion").value;
        var io = calcularNumeros(operacion);
        document.getElementById("resultado").innerHTML = io;
}

function calcularNumeros(operacion){
	var str = "";
        for(var i = 0; i < arreglo.length; i++){
		var aux = arreglo[i] + operacion;	
		if(i > 0){
			aux = arreglo[i] + ")" + operacion;
		}
		//str += aux;
		str = "(" + str + aux;
       	}
        str = str.substring(0, str.length-1);
	str +=")";
        console.log(str);
        var x = eval(str);
	document.getElementById("operacionTexto").innerHTML ="("+ str+")";
        return x;
}

