let listaDeParticipantes = ["Pedro", "Rogério", "João", "Simone", "Lico", "Antonio",
"Lisa"];
let quantidadeDeParticipantes = listaDeParticipantes.length;
if (quantidadeDeParticipantes < 100) {
	listaDeParticipantes.push("Dionisio");
console.log(listaDeParticipantes);
} else {
	console.log("o cadastro não será permitido por ter excedido o limite");
}