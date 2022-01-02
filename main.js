var coluna = document.getElementsByClassName("col")
coluna.addEventListener("mouseenter", adicionar(coluna));

function adicionar(id){
    document.querySelectorAll(".editar")[id].style.display = 'block';
}