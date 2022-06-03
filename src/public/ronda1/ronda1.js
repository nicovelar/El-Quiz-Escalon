function welcomeRonda1 () {
    location.replace("ronda1/ronda1.php");
};

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
            dataStorage = dataStorage + 50;
            localStorage.setItem("TotalScore",JSON.stringify(dataStorage));
            location.replace("../ronda2/ronda2.php");
            
            
        }
        else {
            location.replace("../index.html");
        }
    };

    
}};

