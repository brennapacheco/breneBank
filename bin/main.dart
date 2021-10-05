import 'package:brene_bank/cliente.dart';
import 'package:brene_bank/contacorrente.dart';

void main() {
  ContaCorrente contaDaBrenna = ContaCorrente();
  ContaCorrente contaDoCainaa = ContaCorrente();

  contaDaBrenna.deposito(1500.0);
  contaDaBrenna.transferencia(450.0, contaDoCainaa);
  contaDaBrenna.agencia = 12345;

  print('O saldo na conta é: R\$ ${contaDaBrenna.saldo} e a agência correspondente é ${contaDaBrenna.agencia}.');
}
