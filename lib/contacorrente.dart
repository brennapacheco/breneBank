import 'cliente.dart';

class ContaCorrente {
  ContaCorrente(this.conta, int novaAgencia) {
    if (novaAgencia > 0) _agencia = novaAgencia;
    totalContasCorrentes++;
  }
  
  static int totalContasCorrentes = 0;
  late Cliente titular;
  int _agencia = 145;
  int get agencia => _agencia;
  
  set agencia(int novaAgencia) {
    if (novaAgencia > 0) _agencia = novaAgencia;
  }
  
  late int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100.0;

  double get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print('Erro! Saldo maior que o cheque especial.');
    }
  }

  bool verificaSaldo(double valor) {
    if (saldo - valor < chequeEspecial) {
      print('Saldo insuficiente! :c');
      return false;
    } else {
      print('Movimentando R\$ $valor.');
      saldo -= valor;
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
      saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    saldo += valorDoDeposito;
    return saldo;
  }
}
