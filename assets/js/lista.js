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
    document.querySelector(".valor").innerHTML = '<i class="bi bi-cash-stack"> </i>' + valores + ",00";


}

function preencherjogos(){

    fetch('/getjogos/')
    .then((res) => res.json())
    .then((res) => {
        for (jogo of res) {
            preencherjogo(jogo.htlb, jogo.nome, jogo.plataforma, jogo.valor, jogo.tempo, jogo.multiplayer, jogo.progresso);
        }

    })
}

preencherjogos();

function preencherjogo(url, nome, plataforma, valor, tempo, multiplayer, progresso){

    let container = document.createElement("div");
    container.className = "conteudo";
    let card = document.createElement("div");
    card.style.width = "14rem";
    card.className = "card";
    card.style.height = "350px";
    card.style.margin = "5px";
    let card1 = document.createElement("div");
    card1.style.width = "14rem";
    card1.className = "cardback";
    card1.style.margin = "5px";
    card1.style.height = "350px";
    card1.innerHTML = "<h5> " + nome + "</h5><br><h2 style='font-size: 5pt;'>--------------------------------------------------------------------</h2><br>TEMPO: " + tempo + "h<br>VALOR: R$ " + valor + "<br> NICK: " + multiplayer + "<br> PROGRESSO: " + progresso + "<br>PLATAFORMA: " + plataforma;
    let front = document.createElement("div");
    front.className = "front";
    let back = document.createElement("div");
    back.className = "back";
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
    front.appendChild(card);
    back.appendChild(card1);
    container.appendChild(front)
    container.appendChild(back)

    document.querySelector("#lista").appendChild(container);

}


document.querySelector("#button-addon2").addEventListener("click", pesquisar)

function pesquisar(event) {
    event.preventDefault();

    form1 = document.querySelector("#pesquisar");
    pesquisa = form1.consultajogo.value;
    carregarjogo(pesquisa)

}

function carregarjogo(pesquisa) {
    var elemento = document.getElementById("lista");
    while (elemento.firstChild) {
        elemento.removeChild(elemento.firstChild);
    }
    if (pesquisa == "") {
        preencherjogos();
    } else {
        fetch('/jogopesq/' + pesquisa)
            .then((res) => res.json())
            .then((res) => {
                for (jogo of res) {
                    preencherjogo(jogo.htlb, jogo.nome, jogo.plataforma, jogo.valor, jogo.tempo, jogo.multiplayer, jogo.progresso);
                }

            })
    }

}