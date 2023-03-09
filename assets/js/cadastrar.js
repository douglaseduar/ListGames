const urlParams = new URLSearchParams(window.location.search);
const pnome = urlParams.get('nome');
const pid = urlParams.get('id');
const phora = urlParams.get('hora');
const pfoto = urlParams.get('foto');


function preco(nome){
    fetch('/price/' + nome)
    .then((res) => res.json())
    .then((res) => {
        for (price of res) {
            preencherpreco(price.dinheiro);
        }

    })
}
function sera(){
if(pnome != null){
    preco(pnome);
}}

sera();
preencher();

function preencherpreco(dinheiro){
    let form = document.querySelector("#formulario");
    form.valor.value = dinheiro.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });;
}

function preencher(){
    let form = document.querySelector("#formulario");
    form.nome.value = pnome;
    form.url.value = pfoto;
    form.hora.value = phora;
    document.querySelector("#idjogo").textContent = "id no HTLB: " + pid.replace("id", "");

}

function OnChangeCheckbox (checkbox) {
  if (checkbox.checked) {
    document.querySelector("#multi").classList.remove("d-none")
  } else {
    document.querySelector("#multi").classList.add("d-none")
  }
}


document.querySelector("#enviar").addEventListener("click", enviando);
var aux = " ";

async function enviando (event){
  event.preventDefault();

  let form = document.querySelector("#formulario");

  let nome = form.nome.value;
  let url = form.url.value;
  let hora = form.hora.value;
  let valor = form.valor.value;
  let plataforma = form.plataforma.value;
  let idjogo = document.querySelector("#idjogo").textContent;
  let multi = form.multi.value;

  if (document.querySelector("#inlineCheckbox1").checked) {
    aux = "COMPLETO";
} else if (document.querySelector("#inlineCheckbox2").checked) {
    aux = "HISTÓRIA";
} else if (document.querySelector("#inlineCheckbox3").checked) {
    aux = "NÃO JOGUEI";
}
let valoraux = valor.split('R$ ');

  let header = {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json; charset=UTF-8'
    },
    body: JSON.stringify({
        vnome: nome,
        vurl: url,
        vhora: hora, 
        vvalor: valoraux[1], 
        vplataforma: plataforma,
        vid: idjogo, 
        vmulti: multi, 
        vprogresso: aux

    })
}
fetch('/jogou', header);
location = "/perfil";

}