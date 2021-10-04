import 'package:brene_bank/cliente.dart';
import 'package:brene_bank/contacorrente.dart';

void main() {
  ContaCorrente contaDaBrenna = ContaCorrente();
  ContaCorrente contaDoCainaa = ContaCorrente();

  Cliente brennes = Cliente();
  brennes.cpf = "123.456.789-00";
  brennes.nome = "Brennes";
  brennes.profissao = "Vendedora Romannel";

  contaDaBrenna.titular = brennes;

  print('Titular: ${contaDaBrenna.titular.nome}');
}
 