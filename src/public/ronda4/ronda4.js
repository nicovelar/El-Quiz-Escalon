function verificar () {
    var buttons = document.getElementsByClassName("btn-dark");
    var buttonsCount = buttons.length;
for (var i = 0; i <= buttonsCount; i += 1) {
    buttons[i].onclick = function(e) {
       var eleccion = this.id;
        var respuesta = document.getElementsByClassName("btn-warning");
        var correcta = respuesta[0].name;
        if (eleccion == correcta) {
            let dataStorage = JSON.parse(localStorage.getItem("TotalScore"));
            dataStorage = dataStorage + 300;
            localStorage.setItem("TotalScore",JSON.stringify(dataStorage));
            location.replace("../ronda5/ronda5.php");
            
            
        }
        else {
            location.replace("../index.html");
        }
    };

    
}};

