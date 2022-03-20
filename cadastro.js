class CadastroPF{
    constructor(pNome, pEnd, pCPF, pNasc){
        this.nome = pNome;
        this.end = pEnd;
        this.cpf = pCPF;
        this.nasc = pNasc;
        
    }
    get Nome(){return this.nome;}
    set Nome(pNome){this.nome = pNome;}

    get End(){return this.end;}
    set End(pEnd){this.end = pEnd;}

    get CPF(){return this.cpf;}
    set CPF(pCPF){this.cpf = pCPF;}
    
    get Nasc(){return this.nasc;}
    set Nasc(pNasc){this.nasc = pNasc;}

    CadastrarCliente(){
        return "Nome: " + this.nome + "\nCPF: " + this.cpf + "\nData de Nascimento: " + this.nasc + "\nEndereço: " + this.end;
    }

}

class CadastroPJ extends CadastroPF{
    constructor(pNome, pCNPJ, pRazaoSocial, pEnd){
        super(pNome, pEnd);
        this.cnpj = pCNPJ;
        this.razaosocial = pRazaoSocial;
    }
    get CNPJ(){return this.cnpj;}
    set CNPJ(pCNPJ){this.cnpj = pCNPJ;}

    get RazaoSocial(){return this.razaosocial;}
    set RazaoSocial(pRazaoSocial){this.razaosocial = pRazaoSocial;}

    CadastrarCliente(){
        return "Nome: " + this.nome + "\nCNPJ: " + this.cnpj + "\nRazão Social: " + this.RazaoSocial + "\nEndereço: " + this.end;
    }
}
console.log("-----------------------------------------------------------------");
console.log("                         PESSOA FÍSICA                           ");
console.log("-----------------------------------------------------------------");

var obj_cadastro01 = new CadastroPF("Ana Caroline", "Av. Odilardo Silva, n2324 - Centro, Macapá-Ap", "004.324.2425-23", "12/05/1997");
    console.log(obj_cadastro01.CadastrarCliente());

console.log("-----------------------------------------------------------------");
console.log("                         PESSOA JURÍDICA                         ");
console.log("-----------------------------------------------------------------");

var obj_cadastro02 = new CadastroPJ("Macapa Store", "41.139.129/0001-20", "AP COMERCIO", "Rua Hamilton Silva, n1024 - Beirol, Macapá-Ap");
    console.log(obj_cadastro02.CadastrarCliente());