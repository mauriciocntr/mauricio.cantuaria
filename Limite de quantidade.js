let listaDeParticipantes = ["Simone", "Lico", "Antonio", "Lisa"];  
let quantidadeDeParticipantes = listaDeParticipantes.length;  
if (quantidadeDeParticipantes < 100) {
listaDeParticipantes.push("Dionisio");  
console.log(listaDeParticipantes);  
} else {  
console.log("O cadastro não será permitido por ter excedido o limite");  
}