const urlParams = new URLSearchParams(window.location.search);
const pnome = urlParams.get('nome');
const pid = urlParams.get('id');
const phora = urlParams.get('hora');
const pfoto = urlParams.get('foto');
console.log(pnome)