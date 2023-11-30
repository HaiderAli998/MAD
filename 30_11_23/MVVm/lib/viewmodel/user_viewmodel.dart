import 'package:mvvm/model/user_model.dart';

class UserVM{
  List usermodel=[
    UserModel(name: "Nouman", id: '22222222', domain: 'Ai'),
    UserModel(name: "Ali", id: '32222222', domain: 'ML'),
    UserModel(name: "Ejaz", id: '42222222', domain: 'WD'),
    UserModel(name: "Ahsan", id: '52222222', domain: 'MAD'),

  ];
  String getData(int i){
    return "${usermodel[i].id} ${usermodel[i].name} ${usermodel[i].domain}";
  }
}