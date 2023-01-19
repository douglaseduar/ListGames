
document.querySelector("#pesq").addEventListener("click", cadastrando);


async function cadastrando(event){
event.preventDefault();

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
        card.style.margin = "10px"
        card.style.padding = "10px"
        var imge = document.createElement("img");
        imge.className = "card-img-top";
        imge.src = url;
        imge.style.height = "200px"
        var card1 = document.createElement("div");
        card1.className = "card-body";
        var titulo = document.createElement("h5");
        titulo.className = "card-title";
        titulo.textContent = nome;
        var botao = document.createElement("i")
        botao.className = "bi bi-check-circle botao";
        botao.style.fontSize = "22pt"

        card.appendChild(imge)
        card.appendChild(card1)
        card.appendChild(titulo)
        card.appendChild(botao)

        document.querySelector(".cards").appendChild(card)


}
