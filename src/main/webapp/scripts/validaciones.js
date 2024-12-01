/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/* Funcion para validar letras */
function letras(evento) {
    var numeros = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ abcdefghijklmnñopqrstuvwxyz";
    var valor = evento.which || evento.keyCode;
    var numero = String.fromCharCode(valor);
    var num = numeros.indexOf(numero);

    if (num === -1) {
        swal({
            text: 'Ingresa solo letras',
            icon: "warning",
        });
        return false;
    } else
        return true;
}

/* Funcion para validar numeros */
function numeros(evento) {
    var numeros = "1234567890";
    var valor = evento.which || evento.keyCode;
    var numero = String.fromCharCode(valor);
    var num = numeros.indexOf(numero);

    if (num === -1) {
        swal({
            text: 'Ingresa solo numeros',
            icon: "warning",
        });
        return false;
    } else
        return true;
}

/* Funcion para validar precios */
function precio(evento) {
    var numeros = "1234567890.";
    var valor = evento.which || evento.keyCode;
    var numero = String.fromCharCode(valor);
    var num = numeros.indexOf(numero);

    if (num === -1) {
        swal({
            text: 'Ingresa solo numeros',
            icon: "warning",
        });
        return false;
    } else
        return true;
}

/* Funcion para validar las contraseñas */
function comprobar() {
    var contra = document.f1.Ccontrasena.value;
    var confirm = document.f1.Contrasena.value;

    if (contra !== confirm) {
        swal({
            text: 'Las contraseñas no coinciden',
            icon: "error",
        });
        return false;
    } else {
        return true;
    }
}   