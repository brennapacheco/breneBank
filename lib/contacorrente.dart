import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
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