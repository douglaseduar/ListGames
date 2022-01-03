var coluna = document.getElementsByClassName("col")
coluna.addEventListener("mouseenter", adicionar(coluna));

function aparecer(id){
    document.querySelectorAll(".editar")[id].style.display = 'block';
}
function econder(id){
    document.querySelectorAll(".editar")[id].style.display = 'none';
}