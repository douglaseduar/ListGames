
document.querySelector("#pesq").addEventListener("click", cadastrando);


async function cadastrando(event){
event.preventDefault();

 var elemento = document.getElementById("cards");
    while (elemento.childNodes.length != "2") {
        elemento.removeChild(elemento.lastChild);
    }

let jogo = document.querySelector("#example-search-input").value;


   fetch('/pesqjogo/' + jogo)
        .then((res) => res.json())
        .then((res) => {
            for (jogos of res) {
                let teste = jogos.name;
                if(!teste.includes("DLC")){
                criarcard(jogos.id, jogos.name, jogos.imageUrl, jogos.gameplayMain);
    }}
})
}

function criarcard(id, nome, url, hora){

        var card = document.createElement("div");
        card.className = "card";
        card.style.width = "18rem"
        card.style.height = "21rem"
        card.style.margin = "10px"
        card.style.padding = "10px"
        var imge = document.createElement("img");
        imge.className = "card-img-top";
        imge.src = url;
        imge.style.height = "200px"
        imge.id = "id" + id;
        var hi = document.createElement("p")
        hi.textContent = hora;
        hi.hidden = true;
        hi.id = "id" + id;
        var card1 = document.createElement("div");
        card1.className = "card-body";
        var titulo = document.createElement("h5");
        titulo.className = "card-title";
        titulo.textContent = nome;
        titulo.id = "id" + id;
        var botao = document.createElement("i")
        botao.className = "bi bi-check-circle botao";
        botao.style.fontSize = "22pt"
        botao.addEventListener("click", jogoencontrado);
        botao.id = "id" + id;

        card.appendChild(imge)
        card.appendChild(card1)
        card.appendChild(titulo)
        card.appendChild(botao)
        card.appendChild(hi)

        document.querySelector(".cards").appendChild(card)


}

function jogoencontrado(){
    let identificacao = this.getAttribute("id");
    console.log(identificacao);
    let jogo = document.querySelectorAll("#" + identificacao);
    console.log(jogo);
    let nomej = jogo[1].textContent;
    let fotoj = jogo[0].src;
    let horaj = jogo[3].textContent;

    document.location = "/cadastrar?id=" + identificacao + "&nome=" + nomej + "&foto=" + fotoj + "&hora=" + horaj;

}