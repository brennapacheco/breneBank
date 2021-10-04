import 'package:brene_bank/cliente.dart';
import 'package:brene_bank/contacorrente.dart';

void main() {
  ContaCorrente contaDaBrenna = ContaCorrente();

  contaDaBrenna.definirSaldo(-100);

  print('O saldo na conta é: R\$ ${contaDaBrenna.obterSaldo()}');
}
