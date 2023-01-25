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