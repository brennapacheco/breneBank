void main() {
  ContaCorrente contaDaBrenna = ContaCorrente();
  ContaCorrente contaDoCainaa = ContaCorrente();
  contaDaBrenna.titular = "Brenna";
  contaDoCainaa.titular = "Cainãa";

  print("Titular: ${contaDaBrenna.titular}, saldo: R\$ ${contaDaBrenna.saldo}.");
  print("Titular: ${contaDoCainaa.titular}, saldo: R\$ ${contaDoCainaa.saldo}.");
  
  contaDaBrenna.transferencia(50.0, contaDoCainaa);
  contaDaBrenna.deposito(75.0);
  
  print("Titular: ${contaDaBrenna.titular}, saldo: R\$ ${contaDaBrenna.saldo}.");
  print("Titular: ${contaDoCainaa.titular}, saldo: R\$ ${contaDoCainaa.saldo}.");
}

class ContaCorrente {
  late String titular;
  int agencia = 145;
  late int conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print('Saldo insuficiente! :c');
      return false;
    } else {
      print('Movimentando R\$ $valor.');
      this.saldo -= valor;
      return true;
    }
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorTransferencia)) {
      return false;
    } else {
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      print('Sacando R\$ $valorDoSaque.');
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    this.saldo += valorDoDeposito;
    return this.saldo;
  }
}
