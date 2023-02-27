function preenchermenu(){

    fetch('/dados/')
    .then((res) => res.json())
    .then((res) => {
        for (dados of res) {
            preencherdados(dados.foto, dados.nome, dados.todos, dados.platinas, dados.horas, dados.valores);
        }

    })
}

preenchermenu();

function preencherdados(foto, nome, todos, platinas, horas, valores){

    let primeiro = nome.split(" ");  
    //document.querySelector("#fotomenu").scr = foto;
    document.querySelector(".nome").textContent = primeiro[0];
    document.querySelector(".jogos").innerHTML = '<i class="bi bi-joystick"> </i> ' + todos;
    document.querySelector(".platina").innerHTML = '<i class="bi bi-trophy-fill"> </i> ' + platinas;
    document.querySelector(".tempo").innerHTML = '<i class="bi bi-alarm-fill"> </i> ' + horas;
    document.querySelector(".valor").innerHTML = '<i class="bi bi-cash-stack"> </i> ' + valores;


}