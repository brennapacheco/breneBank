import 'package:brene_bank/contacorrente.dart';
import '../lib/cliente.dart';

void main() {
  ContaCorrente contaDaBrenna = ContaCorrente(6, 22);
  ContaCorrente contaDaCainaa = ContaCorrente(8, 22);
  ContaCorrente contaDaArte = ContaCorrente(10, 22);

  print('O total de contas correntes é ${ContaCorrente.totalContasCorrentes}');
}
