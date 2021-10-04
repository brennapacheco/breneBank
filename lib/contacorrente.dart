import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  int agencia = 145;
  late int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100.0;

  void definirSaldo(double novoSaldo) {
    if (novoSaldo <= chequeEspecial) {
      this._saldo = novoSaldo;
    } else {
      print('Erro! Saldo menor que o cheque especial.');
    }
  }

  double obterSaldo() {
    return this._saldo;
  }

  bool verificaSaldo(double valor) {
    if (this._saldo - valor < chequeEspecial) {
      print('Saldo insuficiente! :c');
      return false;
    } else {
      print('Movimentando R\$ $valor.');
      this._saldo -= valor;
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
      this._saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    this._saldo += valorDoDeposito;
    return this._saldo;
  }
}
