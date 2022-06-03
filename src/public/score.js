
function updateScore(){
    if (localStorage.getItem('TotalScore') == null) {
    escore = 0;
    localStorage.setItem("TotalScore",JSON.stringify(escore));
    }
    
scoreElemento = document.getElementById("score").innerHTML += 'Your score is : ' + localStorage.getItem('TotalScore') ;
};