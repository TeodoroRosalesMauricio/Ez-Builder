/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function alerta(){
    swal({
        title: '¿Seguro que quieres continuar?',
        text: 'Si continuas todos los productos que hayas guardado se eliminaran',
        icon: "warning",
        buttons: {
            
            cancel: "Cancelar",
            
            catch: {
                text: "Continuar",
                value: "continuar"
            }
        }
    })
    .then((value) => {
        switch (value) {
 
            case "continuar":
                swal("Ya c suicido tu carrito");
                
                break;
 
            
            default:
                swal("Ta bien gei");
                
        }
    });
}