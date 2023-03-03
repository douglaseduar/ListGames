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

function preencherjogos(){

    fetch('/getjogos/')
    .then((res) => res.json())
    .then((res) => {
        for (jogo of res) {
            preencherjogo(jogo.htlb, jogo.nome, jogo.plataforma);
        }

    })
}

preencherjogos();

function preencherjogo(url, nome, plataforma){

    let card = document.createElement("div");
    card.style.width = "18rem";
    card.className = "card";
    card.style.margin = "5px"
    let foto = document.createElement("img");
    foto.src = url;
    foto.className = "card-img-top";
    let div = document.createElement("div");
    div.className = "card-body";
    let texto = document.createElement("h5")
    texto.className = "card-text";
    texto.textContent = nome;
    texto.style.textAlign = "center";
    let plata = document.createElement("div");
    plata.className = "plata";
    plata.textContent = plataforma

    card.appendChild(foto);
    div.appendChild(texto);
    div.appendChild(plata);
    card.appendChild(div);

    document.querySelector("#lista").appendChild(card);

}
