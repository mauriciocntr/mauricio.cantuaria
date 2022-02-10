let cadastroDeParticipantes = ["Simone", "Lico", "Antonio", "Lisa"];  
let quantidadeDeParticipantes = cadastroDeParticipantes.length;  
if (quantidadeDeParticipantes < 100) {
    cadastroDeParticipantes.push("Dionisio");  
console.log(cadastroDeParticipantes);  
} else {  
console.log("O cadastro não será permitido por ter excedido o limite");  
}