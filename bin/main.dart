void main() {
  ContaCorrente contaDaBrenna = ContaCorrente();
  ContaCorrente contaDoCainaa = ContaCorrente();
  contaDaBrenna.titular = "Brenna";
  contaDoCainaa.titular = "Cainãa";

  contaDaBrenna.deposito(20.0);
  print('Saldo da ${contaDaBrenna.titular}: R\$ ${contaDaBrenna.saldo}');
  contaDaBrenna.saque(80.0); //acessando o método saque da classe ContaCorrente
  print('Saldo da ${contaDaBrenna.titular}: R\$ ${contaDaBrenna.saldo}');

  contaDoCainaa.deposito(50.0);
  print('Saldo da ${contaDoCainaa.titular}: R\$ ${contaDoCainaa.saldo}');
  contaDoCainaa.saque(130.0); //acessando o método saque da classe ContaCorrente
  print('Saldo da ${contaDoCainaa.titular}: R\$ ${contaDoCainaa.saldo}');

}

class ContaCorrente {
  late String titular;
  int agencia = 145;
  late int conta;
  double saldo = 20.0;

  //criando um método com retorno para a classe
  bool saque(double valorDoSaque) {
    if (this.saldo - valorDoSaque < -100) {
      //this.saldo está referenciando o saldo da classe
      //considerando que tem $100 de cheque especial
      print('Saldo insuficiente');
      return false;
    } else {
      print('Sacando R\$ $valorDoSaque');
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    this.saldo += valorDoDeposito;
    return this.saldo;
  }
}
