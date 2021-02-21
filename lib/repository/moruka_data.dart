import 'package:flutter_tests/model/morucar_model.dart';
class MorukaData{
  List morucar_lists(){
  List<MorucarModel> morucar_model_list = new List<MorucarModel>();
  var abe = new MorucarModel(1, 'abe','images/abe.png');
  morucar_model_list.add(abe);
  var choco = new MorucarModel(2, 'choco','images/choco.png');
  morucar_model_list.add(choco);
  var didy = new MorucarModel(3, 'didy','images/didy.png');
  morucar_model_list.add(didy);
  var shiromo = new MorucarModel(4,'shiromo','images/shiromo.png');
  morucar_model_list.add(shiromo);
  var poteto = new MorucarModel(5,'poteto','images/poteto.png');
  morucar_model_list.add(poteto);
  return morucar_model_list;
  }
}